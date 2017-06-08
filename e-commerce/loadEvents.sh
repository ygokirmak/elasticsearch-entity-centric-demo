curl -X DELETE "localhost:9200/logstash-*"

echo '{ "event_name" : "banner_view", "banner_id":"banner-01", "target_categories":[ "category-01", "category-02" ], "create_date" : "2017-05-22 17:01", "session_id": "user-01"}' > /dev/udp/127.0.0.1/5000
echo '{ "event_name" : "banner_click", "banner_id":"banner-01", "target_categories":[ "category-01", "category-02" ], "create_date" : "2017-05-22 17:01", "session_id": "user-01"}' > /dev/udp/127.0.0.1/5000
echo '{ "event_name" : "banner_view", "banner_id":"banner-02", "target_categories":[ "category-04" ], "create_date" : "2017-05-22 17:02", "session_id": "user-01"}' > /dev/udp/127.0.0.1/5000
echo '{ "event_name" : "banner_click", "banner_id":"banner-02", "target_categories":[ "category-04" ], "create_date" : "2017-05-22 17:02", "session_id": "user-01"}' > /dev/udp/127.0.0.1/5000
echo '{ "event_name" : "banner_view", "banner_id":"banner-03", "target_categories":[ "category-05" ], "create_date" : "2017-05-22 17:03", "session_id": "user-01"}' > /dev/udp/127.0.0.1/5000
echo '{ "event_name" : "banner_view", "banner_id":"banner-01", "target_categories":[ "category-01", "category-02" ], "create_date" : "2017-05-22 17:01", "session_id": "user-02"}' > /dev/udp/127.0.0.1/5000
echo '{ "event_name" : "banner_click", "banner_id":"banner-01", "target_categories":[ "category-01", "category-02" ], "create_date" : "2017-05-22 17:01", "session_id": "user-02"}' > /dev/udp/127.0.0.1/5000
echo '{ "event_name" : "banner_view", "banner_id":"banner-02", "target_categories":[ "category-04" ], "create_date" : "2017-05-22 17:02", "session_id": "user-02"}' > /dev/udp/127.0.0.1/5000
echo '{ "event_name" : "banner_click", "banner_id":"banner-02", "target_categories":[ "category-04" ], "create_date" : "2017-05-22 17:02", "session_id": "user-02"}' > /dev/udp/127.0.0.1/5000
echo '{ "event_name" : "banner_view", "banner_id":"banner-01", "target_categories":[ "category-01", "category-02" ], "create_date" : "2017-05-22 17:01", "session_id": "user-03"}' > /dev/udp/127.0.0.1/5000
echo '{ "event_name" : "banner_view", "banner_id":"banner-02", "target_categories":[ "category-04" ], "create_date" : "2017-05-22 17:02", "session_id": "user-03"}' > /dev/udp/127.0.0.1/5000
echo '{ "event_name" : "banner_view", "banner_id":"banner-03", "target_categories":[ "category-05" ], "create_date" : "2017-05-22 17:03", "session_id": "user-03"}' > /dev/udp/127.0.0.1/5000
echo '{ "event_name" : "cart_completed", "session_id": "user-01", "products": [ { "product_id" : "product-01", "category_id" : "category-01", "price": 10 }, { "product_id" : "product-02", "category_id" : "category-01", "price": 20 }, { "product_id" : "product-03", "category_id" : "category-02", "price": 1000}]}' > /dev/udp/127.0.0.1/5000
echo '{ "event_name" : "cart_completed", "session_id": "user-03", "products": [ { "product_id" : "product-10", "category_id" : "category-01", "price": 22 }]}' > /dev/udp/127.0.0.1/5000
