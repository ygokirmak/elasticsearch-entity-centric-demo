echo "Indexing customer entity events from customer event data"
es_host="http://localhost:9200"
updateScriptID=CustomerProfileUpdater


echo "Deleting old index: customers"
curl -X DELETE "$es_host/customers"
echo ""
echo "Creating new index: customers"
curl -XPUT    "$es_host/customers" -d '
{
   "settings" : {
        "number_of_shards" : 1,
        "number_of_replicas" : 0
    },
	"mappings":{
      "customer": {
        "properties": {
          "last_viewed_product": {
            "type": "keyword"
          },
          "last_viewed_product_date": {
            "type": "date",
            "format" : "yyyy-MM-dd HH:mm"
          },
          "events": {
            "properties": {
              "event_name": {
                "type": "keyword"
              },
              "date": {
                "type": "date"
              }
            }
          }
        }
      }
    }
}    
'
echo ""
echo "Indexing customer entity events from customer event data"
python ../ESEntityCentricIndexing.py events eventQuery.json session_id customers customer $updateScriptID -scriptMode incremental
