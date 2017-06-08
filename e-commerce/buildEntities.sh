echo "Indexing customer entity events from customer event data"
es_host="http://localhost:9200"
updateScriptID=CustomerProfileUpdater


echo "Deleting old index: customers"
curl -X DELETE "$es_host/customers"
echo ""
echo "Creating new index: customers"
curl -XPUT "$es_host/customers?pretty" -H 'Content-Type: application/json' -d'
{
  "mappings": {
    "customer": {
      "properties": {
        "banners" : {
            "type": "nested"
        } 
      }
    }
  }
}
'
echo ""
echo "Indexing customer entity events from customer event data"
python ../ESEntityCentricIndexing.py logstash-* eventQuery.json session_id customers customer $updateScriptID -scriptMode incremental
