Entity centric demo
===================

Background
===========
This demo accompanies the "Entity-centric indexing" talk from Elastic{on} 2015 and
uses some anonymized real-world data to build profiles of buyer behaviours based
on their behaviour in the Amazon marketplace.
The talk provides useful background and a recording is here: https://www.elastic.co/videos/entity-centric-indexing-mark-harwood

Loading the data, building entities
====================================
1) Run the script "loadEvent.sh". This will drop then create the "reviews" index
2) Install the "ReviewerProfileUpdater.groovy" file in the $ES_HOME/config/scripts directory
3) Run the script "buildEntities.sh" to pull the reviews sorted by reviewerId and time from
the "reviews" index and it will create "reviewer" documents in a "reviewers" index.

Step 3 relies on 2 scripts 
1) ESEntityCentricIndexing.py - generic script to pull data from
an event-centric index and push to an entity-centric one.
2) ReviewerProfileUpdater.groovy - our domain-specific business logic for summarising reviewer behaviour

Interesting query
===================
//Find the seller who has more than their fair-share of "fanboy" reviewers..
{
    "query": {
        "match": {
            "profile": "fanboy"
        }
    },
    "aggs": {
        "background": {
            "global": {}
        },
        "keywords": {
            "significant_terms": {
                "field": "recentReviews.vendorId"
            }
        }
    }
}
