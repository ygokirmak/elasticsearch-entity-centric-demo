Entity centric demo
===================

Background
===========
This demo demonstrates the "Entity-centric indexing" for e-commerce customer event data to build customer centric behavior for conversion calculation

Demo is a modification of Mark Harwood's efforts.
Mark Harwood's talk provides useful background and a recording is here: https://www.elastic.co/videos/entity-centric-indexing-mark-harwood

Loading the data, building entities
====================================
1) Run the script "loadEvent.sh". This will drop then create the "events" index
2) Install the "CustomerProfileUpdater.painless" file in the $ES_HOME/config/scripts directory
3) Run the script "buildEntities.sh" to pull the reviews sorted by create_date from
the "events" index and it will create "customer" documents in a "customers" index.

Step 3 relies on 2 scripts 
1) ESEntityCentricIndexing.py - generic script to pull data from
an event-centric index and push to an entity-centric one.
2) CustomerProfileUpdater.painless - our domain-specific business logic for summarising customer behaviour

Interesting query
===================
// Currently how many customers are looking at products
GET /customers/_search
{
  "size": 0,
  "aggs" : {
    "active_view": {
      "date_range": {
        "field": "last_viewed_product_date",
        "format" : "yyyy-MM-dd HH:mm",
        "ranges": [
          { "from": "now-3d", "to": "now" } 
        ]
      },
      "aggs": {
        "product_count": {
          "terms" : {
            "field": "last_viewed_product"
          }
        }
      }
    }
  }
}
