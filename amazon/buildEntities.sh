echo "Indexing reviewer entity profiles from review event data"
es_host="http://localhost:9200"
updateScriptID=ReviewerProfileUpdater


curl -X DELETE "$es_host/reviewers"
curl -XPOST    "$es_host/reviewers" -d '
{
   "settings" : {
        "number_of_shards" : 1,
        "number_of_replicas" : 0
    },
	"mappings":{
		"reviewer": {
            "properties": {
                "vendorSummaries": {
                	"type":"object",
                	"properties":{
								"reviewTotals": {
											"type": "integer"
								}
                	}
                },
                "recentReviews":{
						"properties": {
										"reviewerId": {
											"type": "string", "index":"not_analyzed"
										},
										"vendorId": {
											"type": "string", "index":"not_analyzed"
										},
										"date": {
											"type": "date",
											"format" : "yyyy-MM-dd HH:mm"						
										},										
                                        "timeCoincidenceKey":{
    										"type": "string", "index":"not_analyzed"
                                            
                                        },
										"rating": {
											"type": "integer"
										}
									}                
                },
                "totalNumReviews": {
                    "type": "integer"
                },                               
                "numVendors": {
					"type": "integer"
				},                            
				"profile": {
					"type": "string", "index":"not_analyzed"
				},                   
                "positivity": {
                    "type": "integer"
                },
                "negativity": {
                    "type": "integer"
                },
                "rating5Count": {
                    "type": "integer"
                },
                "rating4Count": {
                    "type": "integer"
                },
                "rating3Count": {
                    "type": "integer"
                },
                "rating2Count": {
                    "type": "integer"
                },
                "rating1Count": {
                    "type": "integer"
                }
            }
        }        
    }        
}    
'
python ../ESEntityCentricIndexing.py reviews review eventQuery.json reviewerId reviewers reviewer $updateScriptID -scriptMode incremental
