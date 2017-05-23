//====================================
//===    Reviewer-centric object =====
//====================================
// This script summarises the reviews
// made by a single marketplace reviewer.
// A history of the last 50 reviews is kept
// and a profile is determined:
// "newbie" - less than 5 reviews
// "regular" - more than 5 reviews
// "fanboy" - > 5 reviews, all positive, 
//            always for the same vendor
// "hater" - > 5 reviews, all negative, 
//            always for the same vendor
// "unlucky" - > 5 reviews, mainly negative, 
//            across multiple vendors
//====================================

int MAX_RECENT_REVIEWS_HELD = 50;


// Extract the doc source to a field
doc = ctx._source;

// If this is an "upsert" where we 
// need to initialize a new doc...
if("create".equals(ctx.op)){
    //initialize entity state
    doc.recentReviews = [];
    doc.profile = "newbie";
    doc.rating5Count = 0;
    doc.rating4Count = 0;
    doc.rating3Count = 0;
    doc.rating2Count = 0;
    doc.rating1Count = 0;
    doc.totalNumReviews = 0;
    doc.vendorSummaries = [];
}


// Convert basic array into map for ease of manipulation (could 
// use a priority queue here)
vendorMap = doc.vendorSummaries.collectEntries{[it.vendorId, it]};

// Append the new events into history, update per-vendor summaries
for (review in events){
    doc.recentReviews.add(review);
    //Add a truncated form of date string for coincidence checks
    //review.timeCoincidenceKey = review.date[0..review.date.size()-2]
    doc.totalNumReviews++;

    vendorSummary = vendorMap.get(review.vendorId);
    if(vendorSummary == null){
        //First time-review for a vendor - initialize ratings structure
        vendorSummary = [
                        "vendorId":review.vendorId,
                        "reviewTotals":[0,0,0,0,0,0]
                        ];
        vendorMap.put(review.vendorId, vendorSummary);
    }
    //Add one to the number of reviews with this rating
    vendorSummary.reviewTotals[review.rating]++;

    //Add one to the total number of reviews given with this star rating
    ratingCounterName = "rating" + review.rating + "Count";
    doc.put(ratingCounterName,doc.get(ratingCounterName)+1);
}
//Store the vendor map back as an array
doc.vendorSummaries = vendorMap.values();

doc.numVendors = vendorMap.size();
doc.positivity = (int)(((doc.rating4Count+doc.rating5Count) / doc.totalNumReviews) *100);
doc.negativity = (int)(((doc.rating2Count+doc.rating1Count) / doc.totalNumReviews) *100);

doc.profile = "newbie";
if(doc.totalNumReviews > 5){
    doc.profile="regular";
    if(doc.positivity > 50){
        if(doc.numVendors == 1){
            doc.profile="fanboy"
        }
    }else{
        if(doc.numVendors == 1){
            doc.profile="hater"
        } else {
            doc.profile="unlucky"
        }
    }
}
if(scriptMode == "fullBuild"){
	// The review content being received is the totality of all content we expect to
	// gather for this entity. We can therefore to decide if the sum total of this
	// user's activity is interesting and if not we can avoid indexing the contents.
	if ((doc.profile == "newbie")||(doc.profile == "regular")) {
		// We choose to abort the insert for "boring" profiles.
		ctx.op ="none"; 
	}
}
//Trim the history of recent reviews to avoid excessive growth over time
int numRecentReviews = doc.recentReviews.size();
if(numRecentReviews > MAX_RECENT_REVIEWS_HELD){
    doc.recentReviews = doc.recentReviews[(numRecentReviews-MAX_RECENT_REVIEWS_HELD)..-1];
}

