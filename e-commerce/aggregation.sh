curl -XGET "http://localhost:9200/customers/customer/_search/" -H 'Content-Type: application/json' -d'
{
  "size": 0,
  "aggs": {
    "banners": {
      "nested": {
        "path": "banners"
      },
      "aggs": {
        "group_by_banner": {
          "terms": {
            "field": "banners.banner_id.keyword"
          },
          "aggs": {
            "total_view": {
              "sum": {
                "field": "banners.view_count"
              }
            },
            "total_click": {
              "sum": {
                "field": "banners.click_count"
              }
            },
            "total_purchase": {
              "sum": {
                "field": "banners.purchase_amount"
              }
            },
            "division": {
              "bucket_script": {
                "buckets_path": {
                  "my_var1": "total_view",
                  "my_var2": "total_click"
                },
                "script": "params.my_var2 / params.my_var1 *100"
              }
            }
          }
        }
      }
    }
  }
}'

