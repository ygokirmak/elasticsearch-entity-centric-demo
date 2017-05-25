
curl -X DELETE "localhost:9200/events"
curl -XPUT    "localhost:9200/events" -d '
{
	"settings" : {
        "number_of_shards" : 1,
        "number_of_replicas" : 0
    },
    "mappings":{
      "events": {
        "properties": {
          "create_date": {
            "type": "date",
            "format" : "yyyy-MM-dd HH:mm"
          }
        }
      }
    }
}    
'
curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
"event_name" : "banner_view",
"banner_id":"banner-01",
"targets":[ "AYKTDWB383853BE38", "EVKUMTELLX6331" ],
"create_date" : "2017-05-22 17:01",
  	"session_id": "0fde2987-a4bd-402d-b23e-dae18786b316"

}
'
curl -XPOST 'localhost:9200/events/banner_click/?pretty' -H 'Content-Type: application/json' -d'
{
"event_name" : "banner_click",
"banner_id":"banner-01",
"targets":[ "AYKTDWB383853BE38", "EVKUMTELLX6331" ],
"create_date" : "2017-05-22 17:01",
"session_id": "0fde2987-a4bd-402d-b23e-dae18786b316"
}
'
curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
"event_name" : "banner_view",
"banner_id":"banner-02",
"targets":[ "HBV000000GHXV" ],
"create_date" : "2017-05-22 17:02",
"session_id": "0fde2987-a4bd-402d-b23e-dae18786b316"
}
'
curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
"event_name" : "banner_view",
"banner_id":"banner-03",
"targets":[ "AYKTDWB383853BE", "KUMTELLX6331", "KUMTELLX6332" ],
"create_date" : "2017-05-22 17:03",
"session_id": "0fde2987-a4bd-402d-b23e-dae18786b316"
}
'
curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
"event_name" : "banner_view",
"banner_id":"banner-04",
"targets":[ "AYKTDWB383853B", "EVKUMTELLX", "EVKUMTELLX12", "EVKUMTELLX22" ],
"create_date" : "2017-05-22 17:04",
"session_id": "0fde2987-a4bd-402d-b23e-dae18786b316"
}
'
curl -XPOST 'localhost:9200/events/banner_click/?pretty' -H 'Content-Type: application/json' -d'
{
"event_name" : "banner_click",
"banner_id":"banner-04",
"targets":[ "AYKTDWB383853B", "EVKUMTELLX", "EVKUMTELLX12", "EVKUMTELLX22" ],
"create_date" : "2017-05-22 17:05",
"session_id": "0fde2987-a4bd-402d-b23e-dae18786b316"
}
'
curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
"event_name" : "banner_view",
"banner_id":"banner-05",
"targets":[ "DASTDWB383853BE38" ],
"create_date" : "2017-05-22 17:06",
"session_id": "0fde2987-a4bd-402d-b23e-dae18786b316"
}
'


curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
	"product_id": "spordelta787",
	"product_name":"Delta Çok Fonksiyonlu Deluxe Kapı Barfiksi + Mekik & Şınav Çekme Aleti - DS 1325",
  	"sku": "SPORDELTA787",
  	"category": "Spor Outdoor",
  	"category_id": "60001546",
  	"product_category":"barfiks-ve-sinav-barlari",
  	"product_category_id":"27081598",
  	"brand": "Delta",
  	"price": "29.84",
  	"session_id": "0fde2987-a4bd-402d-b23e-dae18786b316",
  	"create_date" : "2017-05-22 17:08",
  	"device" : "mobile",
  	"referral": "google"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
	"product_id": "HB000001IIP7",
	"product_name":"Sjcam M20 Wifi 4K 24Fps Gyro Orjinal Lisanslı Aksiyon Kamerası-Siyah",
  	"sku": "HBV000001IIP8",
  	"category": "Aksiyon Kamera",
  	"category_id": "22018092",
  	"product_category":"aksiyon-kamera",
  	"product_category_id":"22018092",
  	"brand": "Sjcam",
  	"price": "492.93",
  	"session_id": "0fde2987-a4bd-402d-b23e-dae18786b316",
	"create_date" : "2017-05-22 17:09",
  	"device" : "mobile",
  	"referral": "google"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
	"product_id": "outkayasj50001",
	"product_name":"Sjcam Sj5000 Wifi Outdoor Aksiyon Kamera Lisanslı Ürün-Gri",
  	"sku": "OUTKAYASJ5000-1",
  	"category": "Aksiyon Kamera",
  	"category_id": "22018092",
  	"product_category":"aksiyon-kamera",
  	"product_category_id":"22018092",
  	"brand": "Sjcam",
  	"price": "469.40",
  	"session_id": "0fde2987-a4bd-402d-b23e-dae18786b316",
	"create_date" : "2017-05-22 17:10",
  	"device" : "desktop",
  	"referral": "facebook"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
"product_id":"ayktdwb383853be",
"product_name":"Betula Kadın Terlik Wb383853",
"sku":"AYKTDWB383853BE38",
"category":"Terlik",
"category_id":"60003913",
"product_category":"terlik",
"product_category_id":"60003913",
"brand":"Betula",
"price":"80.98",
"session_id":"0fde2987-a4bd-402d-b23e-dae18786b316",
"create_date" : "2017-05-22 17:11",
  	"device" : "desktop",
  	"referral": "facebook"

}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
"product_id":"otlstcon0356252",
"product_name":"Continental 205/55R16 91V ContiPremiumContact5 Oto Lastik (Üretim Yılı:2017)",
"sku":"OTLSTCON0356252",
"category":"Oto Lastikler",
"category_id":"259720",
"product_category":"oto-lastikler",
"product_category_id":"259720",
"brand":"Continental",
"price":"250.89",
"session_id":"0fde2987-a4bd-402d-b23e-dae18786b316",
"create_date" : "2017-05-22 17:12",
  	"device" : "mobile",
  	"referral": "facebook"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
"product_id":"otm093051",
"product_name":"Carpex Lastik Tamir Edici Şişirici Sprey - Lastik Tamirine Son! 093051",
"sku":"OTM093051",
"category":"Oto Lastik-Bakım",
"category_id":"262977",
"product_category":"oto-lastik-bakim",
"product_category_id":"262977",
"brand":"Carpex",
"price":"14.99",
"session_id":"0fde2987-a4bd-402d-b23e-dae18786b316",
  	"create_date" : "2017-05-22 17:13",
  	  	"device" : "mobile",
  	"referral": "google"

}
'
curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
"product_id":"otm652002",
"product_name":"Castrol Magnatec 10W-40 A3/B4 4 Litre Motor Yağı (Üretim Yılı: 2017)",
"sku":"OTM652001",
"category":"Yağ ve Motor Katkıları",
"category_id":"26005",
"product_category":"yag-ve-motor-katkilari",
"product_category_id":"26005",
"brand":"Castrol",
"price":"76.90",
"session_id":"0fde2987-a4bd-402d-b23e-dae18786b316",
  	"create_date" : "2017-05-22 17:14",
  	  	"device" : "mobile",
  	"referral": "google"

}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
"product_id":"HB0000042Z4I",
"product_name":"Kinetix Kadın Günlük Ayakkabı 100249786",
"sku":"HBV0000042Z4L",
"category":"Günlük Spor Ayakkabı",
"category_id":"27045582",
"product_category":"gunluk-spor-ayakkabi",
"product_category_id":"27045582",
"brand":"Kinetix",
"price":"47.99",
"session_id":"0fde2987-a4bd-402d-b23e-dae18786b316",
  	"create_date" : "2017-05-22 17:15",
  	  	"device" : "mobile",
  	"referral": "google"

}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
"product_id":"HB0000042Z4I",
"product_name":"Kinetix Kadın Günlük Ayakkabı 100249786",
"sku":"HBV0000042Z4L",
"category":"Günlük Spor Ayakkabı",
"category_id":"27045582",
"product_category":"gunluk-spor-ayakkabi",
"product_category_id":"27045582",
"brand":"Kinetix",
"price":"47.99",
"session_id":"0fde2987-a4bd-402d-b23e-dae18786b316",
  	"create_date" : "2017-05-22 17:16",
  	  	"device" : "mobile",
  	"referral": "google"

}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
"product_id":"HB000004FNFY",
"product_name":"WD Elements 1TB 2.5 USB 3.0 Taşınabilir Disk (WDBUZG0010BBK-WESN)",
"sku":"HBV000004FNFZ",
"category":"Taşınabilir Disk",
"category_id":"100225",
"product_category":"tasinabilir-disk",
"product_category_id":"100225",
"brand":"WD",
"price":"214.00",
"session_id":"0fde2987-a4bd-402d-b23e-dae18786b316",
  	"create_date" : "2017-05-22 17:17",
  	  	"device" : "mobile",
  	"referral": "google"

}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
"event_name" : "product_view",
"product_id":"HB0000022Q46",
"product_name":"WD My Passport 4TB 2,5 USB 3.0 Siyah Taşınabilir Disk WDBYFT0040BBK",
"sku":"HBV0000022Q47",
"category":"Taşınabilir Disk",
"category_id":"100225",
"product_category":"tasinabilir-disk",
"product_category_id":"100225",
"brand":"WD",
"price":"687.21",
"session_id":"0fde2987-a4bd-402d-b23e-dae18786b316",
  	"create_date" : "2017-05-22 17:18",
  	  	"device" : "mobile"
}
'

curl -XPOST 'localhost:9200/events/checkout_complete/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "checkout_complete",
	"checkout_id": "fksdjfsdjfisjf9sdfjsd9f",
	"order_id": "51303256",
	"affiliation": "Google Store",
	"total": "768.19",
	"revenue": "100.71",
	"shipping": "0.00",
	"tax": "14.38",
	"discount": "0.00",
	"coupon": "hasbros",
	"installment": "2",
	"products": [{
			"product_id":"HB0000022Q46",
			"product_name":"WD My Passport 4TB 2,5 USB 3.0 Siyah Taşınabilir Disk WDBYFT0040BBK",
			"sku":"HBV0000022Q47",
			"product_category":"tasinabilir-disk",
			"product_category_id":"100225",
			"brand":"WD",
			"price":"687.21"
		},
		{
			"product_id":"ayktdwb383853be",
			"product_name":"Betula Kadın Terlik Wb383853",
			"sku":"AYKTDWB383853BE38",
			"product_category":"terlik",
			"product_category_id":"60003913",
			"brand":"Betula",
			"price":"80.98"
		}
	],
	"session_id":"0fde2987-a4bd-402d-b23e-dae18786b316",
	"create_date": "2017-05-22 17:30"
}
'


echo "--------------------------------------------"


curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_view",
    "banner_id":"banner-01",
    "targets":[ "AYKTDWB383853BE38", "EVKUMTELLX6331" ],
    "create_date" : "2017-05-22 17:01",
    "session_id":"a7525bdf-3d3b-4fcf-859b-972410ed9701"
}
'
curl -XPOST 'localhost:9200/events/banner_click/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_click",
    "banner_id":"banner-01",
    "targets":[ "AYKTDWB383853BE38", "EVKUMTELLX6331" ],
    "create_date" : "2017-05-22 17:01",
    "session_id":"a7525bdf-3d3b-4fcf-859b-972410ed9701"
}
'
curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_view",
    "banner_id":"banner-02",
    "targets":[ "HBV000000GHXV" ],
    "create_date" : "2017-05-22 17:02",
    "session_id":"a7525bdf-3d3b-4fcf-859b-972410ed9701"
}
'
curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_view",
    "banner_id":"banner-03",
    "targets":[ "AYKTDWB383853BE", "KUMTELLX6331", "KUMTELLX6332" ],
    "create_date" : "2017-05-22 17:03",
    "session_id":"a7525bdf-3d3b-4fcf-859b-972410ed9701"
}
'
curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_view",
    "banner_id":"banner-04",
    "targets":[ "ZYPYON7375750", "EVKUMTELLX", "EVKUMTELLX12", "EVKUMTELLX22" ],
    "create_date" : "2017-05-22 17:04",
    "session_id":"a7525bdf-3d3b-4fcf-859b-972410ed9701"
}
'
curl -XPOST 'localhost:9200/events/banner_click/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_click",
    "banner_id":"banner-04",
    "targets":[ "ZYPYON7375750", "EVKUMTELLX", "EVKUMTELLX12", "EVKUMTELLX22" ],
    "create_date" : "2017-05-22 17:05",
    "session_id":"a7525bdf-3d3b-4fcf-859b-972410ed9701"
}
'
curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_view",
    "banner_id":"banner-05",
    "targets":[ "EVFAKHOBBYSPRE-B" ],
    "create_date" : "2017-05-22 17:06",
    "session_id":"a7525bdf-3d3b-4fcf-859b-972410ed9701"
}
'


curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"zypyon737537",
    "product_name":"Prima Bebek Bezi Aktif Bebek 4 Beden Maxi Mega Box Plus Paket 147 Adet",
    "sku":"ZYPYON7375750",
    "category":"Bebek  Bezleri",
    "category_id":"60001049",
    "product_category":"bebek-bezleri",
    "product_category_id":"60001049",
    "brand":"Prima",
    "price":"79.90",
    "session_id":"a7525bdf-3d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-05-22 17:19",
    "device" : "desktop"
}
'
curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"evkumtellx6331",
    "product_name":"Kumtel LX-6331 2000 Watt Fanlı Isıtıcı",
    "sku":"EVKUMTELLX6331",
    "category":"Fanlı Isıtıcılar",
    "category_id":"80081039",
    "product_category":"fanli-isiticilar",
    "product_category_id":"80081039",
    "brand":"Kumtel",
    "price":"45.00",
    "session_id":"a7525bdf-3d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-05-22 17:20",
    "device" : "desktop"
}
'
curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"evfakhobbyspre",
    "product_name":"Fakir Hobby S Premium 2000 Watt Yanmaz Gövdeli Fanlı Isıtıcı-Beyaz",
    "sku":"EVFAKHOBBYSPRE-B",
    "category":"Fanlı Isıtıcılar",
    "category_id":"80081039",
    "product_category":"fanli-isiticilar",
    "product_category_id":"80081039",
    "brand":"Fakir",
    "price":"199.00",
    "session_id":"a7525bdf-3d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-05-22 17:21",
    "device" : "desktop",
    "referral": "google"
}
'
curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"outvariky68672",
    "product_name":"Intex Kadife Kaplı Şişme Minder-Yastık 43X28X9Cm - 68672",
    "sku":"OUTVARIKY68672",
    "category":"Şişme Yastık",
    "category_id":"60007522",
    "product_category":"sisme-yastik",
    "product_category_id":"60007522",
    "brand":"intex",
    "price":"7.49",
    "session_id":"a7525bdf-3d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-05-22 17:22",
    "device" : "desktop",
    "referral": "google"
}
'
curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"outdelta019",
    "product_name":"Intex Double Quick Çift Fonksiyonlu ( Dual-Way ) El Pompası - 68612",
    "sku":"OUTDELTA019",
    "category":"Şişme Yatak Pompası",
    "category_id":"60007523",
    "product_category":"sisme-yatak-pompasi",
    "product_category_id":"60007523",
    "brand":"intex",
    "price":"16.50",
    "session_id":"a7525bdf-3d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-05-22 17:23",
    "device" : "desktop",
    "referral": "google"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"outvarip66632",
    "product_name":"Intex Elektrikli Pompa (220Volt+ 12V Arac Cakmak) - 66632",
    "sku":"OUTVARIP66632",
    "category":"Şişme Yatak Pompası",
    "category_id":"60007523",
    "product_category":"sisme-yatak-pompasi",
    "product_category_id":"60007523",
    "brand":"intex",
    "price":"94.90",
    "session_id":"a7525bdf-3d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-05-22 17:24",
    "device" : "desktop",
    "referral": "google"
}
'
curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"HB000004OB2J",
    "product_name":"Trend Yıkanabilir Her Sandalyeye Uygun Likralı ve Esnek Su Tutmaz Sandalye Kılıfı",
    "sku":"HBV000004OB2N",
    "category":"Yatak Odası Ürünleri",
    "category_id":"9010109",
    "product_category":"Çarsaflar",
    "product_category_id":"9009859",
    "brand":"Trend",
    "price":"16.48",
    "session_id":"a7525bdf-3d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-05-22 17:25",
    "device" : "mobile",
    "referral": "facebook"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"eaksblgc3000",
    "product_name":"Özdilek Ardelya Çift Kişilik Nevresim Takımı",
    "sku":"EAKSBLGC3000",
    "category":"Çift Kişilik Nevresim Takımları",
    "category_id":"60004325",
    "product_category":"cift-kisilik-nevresim-takimlari",
    "product_category_id":"60004325",
    "brand":"Özdilek",
    "price":"90.00",
    "session_id":"a7525bdf-3d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-05-22 17:26",
    "device" : "desktop",
    "referral": "facebook"
}
'
curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"HB000000GHXU",
    "product_name":"Decorotika Next Çalışma Masası",
    "sku":"HBV000000GHXV",
    "category":"Çalışma Masası",
    "category_id":"18043090",
    "product_category":"calisma-masasi",
    "product_category_id":"18043090",
    "brand":"Decorotika",
    "price":"119.90",
    "session_id":"a7525bdf-3d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-05-22 17:27",
    "device" : "desktop",
    "referral": "google"
}
'

echo "-------------------------"
curl -XPOST 'localhost:9200/events/checkout_complete/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "checkout_complete",
	"checkout_id": "fksdjfsdjfisjf9sdfjsd9f",
	"order_id": "51303256",
	"affiliation": "Google Store",
	"total": "318.9",
	"revenue": "100.71",
	"shipping": "0.00",
	"tax": "14.38",
	"discount": "0.00",
	"coupon": "hasbros",
	"installment": "2",
	"products": [{
			"product_id": "HB000000GHXU",
			"product_name": "Decorotika Next Çalışma Masası",
			"sku": "HBV000000GHXV",
			"product_category": "calisma-masasi",
			"product_category_id": "18043090",
			"brand": "Decorotika",
			"price": "119.90"
		},
		{
			"product_id": "evfakhobbyspre",
			"product_name": "Fakir Hobby S Premium 2000 Watt Yanmaz Gövdeli Fanlı Isıtıcı-Beyaz",
			"sku": "EVFAKHOBBYSPRE-B",
			"product_category": "fanli-isiticilar",
			"product_category_id": "80081039",
			"brand": "Fakir",
			"price": "199.00"
		}
	],
	"session_id": "a7525bdf-3d3b-4fcf-859b-972410ed9701",
	"create_date": "2017-05-22 17:30"
}
'
curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_view",
    "banner_id":"banner-01",
    "targets":[ "AYKTDWB383853BE38", "EVKUMTELLX6331" ],
    "create_date" : "2017-06-22 17:01",
  	"session_id": "a4bd-402d-b23e-dae18786b316"
}
'
curl -XPOST 'localhost:9200/events/banner_click/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_click",
    "banner_id":"banner-01",
    "targets":[ "AYKTDWB383853BE38", "EVKUMTELLX6331" ],
    "create_date" : "2017-06-22 17:01",
    "session_id": "a4bd-402d-b23e-dae18786b316"
}
'
curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_view",
    "banner_id":"banner-02",
    "targets":[ "HBV000000GHXV" ],
    "create_date" : "2017-06-22 17:02",
    "session_id": "a4bd-402d-b23e-dae18786b316"
}
'
curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_view",
    "banner_id":"banner-03",
    "targets":[ "AYKTDWB383853BE", "KUMTELLX6331", "KUMTELLX6332" ],
    "create_date" : "2017-06-22 17:03",
    "session_id": "a4bd-402d-b23e-dae18786b316"
}
'
curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_view",
    "banner_id":"banner-04",
    "targets":[ "AYKTDWB383853B", "EVKUMTELLX", "EVKUMTELLX12", "EVKUMTELLX22" ],
    "create_date" : "2017-06-22 17:04",
    "session_id": "a4bd-402d-b23e-dae18786b316"
}
'
curl -XPOST 'localhost:9200/events/banner_click/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_click",
    "banner_id":"banner-04",
    "targets":[ "AYKTDWB383853B", "EVKUMTELLX", "EVKUMTELLX12", "EVKUMTELLX22" ],
    "create_date" : "2017-06-22 17:05",
    "session_id": "a4bd-402d-b23e-dae18786b316"
}
'
curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_view",
    "banner_id":"banner-05",
    "targets":[ "DASTDWB383853BE38" ],
    "create_date" : "2017-06-22 17:06",
    "session_id": "a4bd-402d-b23e-dae18786b316"
}
'


curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
	"product_id": "spordelta787",
	"product_name":"Delta Çok Fonksiyonlu Deluxe Kapı Barfiksi + Mekik & Şınav Çekme Aleti - DS 1325",
  	"sku": "SPORDELTA787",
  	"category": "Spor Outdoor",
  	"category_id": "60001546",
  	"product_category":"barfiks-ve-sinav-barlari",
  	"product_category_id":"27081598",
  	"brand": "Delta",
  	"price": "29.84",
  	"session_id": "a4bd-402d-b23e-dae18786b316",
  	"create_date" : "2017-06-22 17:08",
  	"device" : "desktop",
    "referral": "google"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
	"product_id": "HB000001IIP7",
	"product_name":"Sjcam M20 Wifi 4K 24Fps Gyro Orjinal Lisanslı Aksiyon Kamerası-Siyah",
  	"sku": "HBV000001IIP8",
  	"category": "Aksiyon Kamera",
  	"category_id": "22018092",
  	"product_category":"aksiyon-kamera",
  	"product_category_id":"22018092",
  	"brand": "Sjcam",
  	"price": "492.93",
  	"session_id": "a4bd-402d-b23e-dae18786b316",
	"create_date" : "2017-06-22 17:09",
	"device" : "desktop",
    "referral": "google"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
	"product_id": "outkayasj50001",
	"product_name":"Sjcam Sj5000 Wifi Outdoor Aksiyon Kamera Lisanslı Ürün-Gri",
  	"sku": "OUTKAYASJ5000-1",
  	"category": "Aksiyon Kamera",
  	"category_id": "22018092",
  	"product_category":"aksiyon-kamera",
  	"product_category_id":"22018092",
  	"brand": "Sjcam",
  	"price": "469.40",
  	"session_id": "a4bd-402d-b23e-dae18786b316",
	"create_date" : "2017-06-22 17:10",
	"device" : "desktop",
    "referral": "google"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"ayktdwb383853be",
    "product_name":"Betula Kadın Terlik Wb383853",
    "sku":"AYKTDWB383853BE38",
    "category":"Terlik",
    "category_id":"60003913",
    "product_category":"terlik",
    "product_category_id":"60003913",
    "brand":"Betula",
    "price":"80.98",
    "session_id":"a4bd-402d-b23e-dae18786b316",
    "create_date" : "2017-06-22 17:11",
    "device" : "desktop",
    "referral": "google"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"otlstcon0356252",
    "product_name":"Continental 205/55R16 91V ContiPremiumContact5 Oto Lastik (Üretim Yılı:2017)",
    "sku":"OTLSTCON0356252",
    "category":"Oto Lastikler",
    "category_id":"259720",
    "product_category":"oto-lastikler",
    "product_category_id":"259720",
    "brand":"Continental",
    "price":"250.89",
    "session_id":"a4bd-402d-b23e-dae18786b316",
    "create_date" : "2017-06-22 17:12",
    "device" : "desktop",
    "referral": "google"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"otm093051",
    "product_name":"Carpex Lastik Tamir Edici Şişirici Sprey - Lastik Tamirine Son! 093051",
    "sku":"OTM093051",
    "category":"Oto Lastik-Bakım",
    "category_id":"262977",
    "product_category":"oto-lastik-bakim",
    "product_category_id":"262977",
    "brand":"Carpex",
    "price":"14.99",
    "session_id":"a4bd-402d-b23e-dae18786b316",
  	"create_date" : "2017-06-22 17:13",
  	"device" : "desktop",
    "referral": "google"
}
'
curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"otm652002",
    "product_name":"Castrol Magnatec 10W-40 A3/B4 4 Litre Motor Yağı (Üretim Yılı: 2017)",
    "sku":"OTM652001",
    "category":"Yağ ve Motor Katkıları",
    "category_id":"26005",
    "product_category":"yag-ve-motor-katkilari",
    "product_category_id":"26005",
    "brand":"Castrol",
    "price":"76.90",
    "session_id":"a4bd-402d-b23e-dae18786b316",
  	"create_date" : "2017-06-22 17:14",
  	"device" : "desktop",
    "referral": "google"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"HB0000042Z4I",
    "product_name":"Kinetix Kadın Günlük Ayakkabı 100249786",
    "sku":"HBV0000042Z4L",
    "category":"Günlük Spor Ayakkabı",
    "category_id":"27045582",
    "product_category":"gunluk-spor-ayakkabi",
    "product_category_id":"27045582",
    "brand":"Kinetix",
    "price":"47.99",
    "session_id":"a4bd-402d-b23e-dae18786b316",
  	"create_date" : "2017-06-22 17:15",
  	"device" : "desktop",
    "referral": "google"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"HB0000042Z4I",
    "product_name":"Kinetix Kadın Günlük Ayakkabı 100249786",
    "sku":"HBV0000042Z4L",
    "category":"Günlük Spor Ayakkabı",
    "category_id":"27045582",
    "product_category":"gunluk-spor-ayakkabi",
    "product_category_id":"27045582",
    "brand":"Kinetix",
    "price":"47.99",
    "session_id":"a4bd-402d-b23e-dae18786b316",
  	"create_date" : "2017-06-22 17:16",
  	"device" : "desktop",
    "referral": "google"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"HB000004FNFY",
    "product_name":"WD Elements 1TB 2.5 USB 3.0 Taşınabilir Disk (WDBUZG0010BBK-WESN)",
    "sku":"HBV000004FNFZ",
    "category":"Taşınabilir Disk",
    "category_id":"100225",
    "product_category":"tasinabilir-disk",
    "product_category_id":"100225",
    "brand":"WD",
    "price":"214.00",
    "session_id":"a4bd-402d-b23e-dae18786b316",
    "create_date" : "2017-06-22 17:17",
    "device" : "desktop",
    "referral": "google"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"HB0000022Q46",
    "product_name":"WD My Passport 4TB 2,5 USB 3.0 Siyah Taşınabilir Disk WDBYFT0040BBK",
    "sku":"HBV0000022Q47",
    "category":"Taşınabilir Disk",
    "category_id":"100225",
    "product_category":"tasinabilir-disk",
    "product_category_id":"100225",
    "brand":"WD",
    "price":"687.21",
    "session_id":"a4bd-402d-b23e-dae18786b316",
  	"create_date" : "2017-06-22 17:18",
  	"device" : "desktop",
    "referral": "google"
}
'

curl -XPOST 'localhost:9200/events/checkout_complete/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "checkout_complete",
	"checkout_id": "fksdjfsdjfisjf9sdfjsd9f",
	"order_id": "51303256",
	"affiliation": "Google Store",
	"total": "768.19",
	"revenue": "100.71",
	"shipping": "0.00",
	"tax": "14.38",
	"discount": "0.00",
	"coupon": "hasbros",
	"installment": "2",
	"products": [{
			"product_id":"HB0000022Q46",
			"product_name":"WD My Passport 4TB 2,5 USB 3.0 Siyah Taşınabilir Disk WDBYFT0040BBK",
			"sku":"HBV0000022Q47",
			"product_category":"tasinabilir-disk",
			"product_category_id":"100225",
			"brand":"WD",
			"price":"687.21"
		},
		{
			"product_id":"ayktdwb383853be",
			"product_name":"Betula Kadın Terlik Wb383853",
			"sku":"AYKTDWB383853BE38",
			"product_category":"terlik",
			"product_category_id":"60003913",
			"brand":"Betula",
			"price":"80.98"
		}
	],
	"session_id":"a4bd-402d-b23e-dae18786b316",
	"create_date": "2017-06-22 17:30"
}
'


echo "--------------------------------------------"


curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_view",
    "banner_id":"banner-01",
    "targets":[ "AYKTDWB383853BE38", "EVKUMTELLX6331" ],
    "create_date" : "2017-06-22 17:01",
    "session_id":"3d3b-4fcf-859b-972410ed9701"
}
'
curl -XPOST 'localhost:9200/events/banner_click/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_click",
    "banner_id":"banner-01",
    "targets":[ "AYKTDWB383853BE38", "EVKUMTELLX6331" ],
    "create_date" : "2017-06-22 17:01",
    "session_id":"3d3b-4fcf-859b-972410ed9701"
}
'
curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_view",
    "banner_id":"banner-02",
    "targets":[ "HBV000000GHXV" ],
    "create_date" : "2017-06-22 17:02",
    "session_id":"3d3b-4fcf-859b-972410ed9701"
}
'
curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_view",
    "banner_id":"banner-03",
    "targets":[ "AYKTDWB383853BE", "KUMTELLX6331", "KUMTELLX6332" ],
    "create_date" : "2017-06-22 17:03",
    "session_id":"3d3b-4fcf-859b-972410ed9701"
}
'
curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_view",
    "banner_id":"banner-04",
    "targets":[ "ZYPYON7375750", "EVKUMTELLX", "EVKUMTELLX12", "EVKUMTELLX22" ],
    "create_date" : "2017-06-22 17:04",
    "session_id":"3d3b-4fcf-859b-972410ed9701"
}
'
curl -XPOST 'localhost:9200/events/banner_click/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_click",
    "banner_id":"banner-04",
    "targets":[ "ZYPYON7375750", "EVKUMTELLX", "EVKUMTELLX12", "EVKUMTELLX22" ],
    "create_date" : "2017-05-22 17:05",
    "session_id":"3d3b-4fcf-859b-972410ed9701"
}
'
curl -XPOST 'localhost:9200/events/banner_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "banner_view",
    "banner_id":"banner-05",
    "targets":[ "EVFAKHOBBYSPRE-B" ],
    "create_date" : "2017-06-22 17:06",
    "session_id":"3d3b-4fcf-859b-972410ed9701"
}
'


curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"zypyon737537",
    "product_name":"Prima Bebek Bezi Aktif Bebek 4 Beden Maxi Mega Box Plus Paket 147 Adet",
    "sku":"ZYPYON7375750",
    "category":"Bebek  Bezleri",
    "category_id":"60001049",
    "product_category":"bebek-bezleri",
    "product_category_id":"60001049",
    "brand":"Prima",
    "price":"79.90",
    "session_id":"3d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-06-22 17:19",
    "device" : "desktop",
    "referral": "google"
}
'
curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"evkumtellx6331",
    "product_name":"Kumtel LX-6331 2000 Watt Fanlı Isıtıcı",
    "sku":"EVKUMTELLX6331",
    "category":"Fanlı Isıtıcılar",
    "category_id":"80081039",
    "product_category":"fanli-isiticilar",
    "product_category_id":"80081039",
    "brand":"Kumtel",
    "price":"45.00",
    "session_id":"3d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-06-22 17:20",
    "device" : "desktop",
    "referral": "google"
}
'
curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"evfakhobbyspre",
    "product_name":"Fakir Hobby S Premium 2000 Watt Yanmaz Gövdeli Fanlı Isıtıcı-Beyaz",
    "sku":"EVFAKHOBBYSPRE-B",
    "category":"Fanlı Isıtıcılar",
    "category_id":"80081039",
    "product_category":"fanli-isiticilar",
    "product_category_id":"80081039",
    "brand":"Fakir",
    "price":"199.00",
    "session_id":"3d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-06-22 17:21",
    "device" : "desktop",
    "referral": "google"

}
'
curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"outvariky68672",
    "product_name":"Intex Kadife Kaplı Şişme Minder-Yastık 43X28X9Cm - 68672",
    "sku":"OUTVARIKY68672",
    "category":"Şişme Yastık",
    "category_id":"60007522",
    "product_category":"sisme-yastik",
    "product_category_id":"60007522",
    "brand":"intex",
    "price":"7.49",
    "session_id":"3d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-06-22 17:22",
    "device" : "desktop",
    "referral": "google"
}
'
curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"outdelta019",
    "product_name":"Intex Double Quick Çift Fonksiyonlu ( Dual-Way ) El Pompası - 68612",
    "sku":"OUTDELTA019",
    "category":"Şişme Yatak Pompası",
    "category_id":"60007523",
    "product_category":"sisme-yatak-pompasi",
    "product_category_id":"60007523",
    "brand":"intex",
    "price":"16.50",
    "session_id":"3d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-06-22 17:23",
    "device" : "desktop",
    "referral": "google"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"outvarip66632",
    "product_name":"Intex Elektrikli Pompa (220Volt+ 12V Arac Cakmak) - 66632",
    "sku":"OUTVARIP66632",
    "category":"Şişme Yatak Pompası",
    "category_id":"60007523",
    "product_category":"sisme-yatak-pompasi",
    "product_category_id":"60007523",
    "brand":"intex",
    "price":"94.90",
    "session_id":"3d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-06-22 17:24",
    "device" : "desktop",
    "referral": "google"
}
'
curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"HB000004OB2J",
    "product_name":"Trend Yıkanabilir Her Sandalyeye Uygun Likralı ve Esnek Su Tutmaz Sandalye Kılıfı",
    "sku":"HBV000004OB2N",
    "category":"Yatak Odası Ürünleri",
    "category_id":"9010109",
    "product_category":"Çarsaflar",
    "product_category_id":"9009859",
    "brand":"Trend",
    "price":"16.48",
    "session_id":"3d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-06-22 17:25",
    "device" : "desktop",
    "referral": "google"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"eaksblgc3000",
    "product_name":"Özdilek Ardelya Çift Kişilik Nevresim Takımı",
    "sku":"EAKSBLGC3000",
    "category":"Çift Kişilik Nevresim Takımları",
    "category_id":"60004325",
    "product_category":"cift-kisilik-nevresim-takimlari",
    "product_category_id":"60004325",
    "brand":"Özdilek",
    "price":"90.00",
    "session_id":"3d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-06-22 17:26",
    "device" : "desktop",
    "referral": "google"
}
'
curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"HB000000GHXU",
    "product_name":"Decorotika Next Çalışma Masası",
    "sku":"HBV000000GHXV",
    "category":"Çalışma Masası",
    "category_id":"18043090",
    "product_category":"calisma-masasi",
    "product_category_id":"18043090",
    "brand":"Decorotika",
    "price":"119.90",
    "session_id":"3d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-06-22 17:27",
    "device" : "desktop",
    "referral": "google"
}
'

echo "-------------------------"
curl -XPOST 'localhost:9200/events/checkout_complete/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "checkout_complete",
	"checkout_id": "fksdjfsdjfisjf9sdfjsd9f",
	"order_id": "51303256",
	"affiliation": "Google Store",
	"total": "318.9",
	"revenue": "100.71",
	"shipping": "0.00",
	"tax": "14.38",
	"discount": "0.00",
	"coupon": "hasbros",
	"installment": "2",
	"products": [{
			"product_id": "HB000000GHXU",
			"product_name": "Decorotika Next Çalışma Masası",
			"sku": "HBV000000GHXV",
			"product_category": "calisma-masasi",
			"product_category_id": "18043090",
			"brand": "Decorotika",
			"price": "119.90"
		},
		{
			"product_id": "evfakhobbyspre",
			"product_name": "Fakir Hobby S Premium 2000 Watt Yanmaz Gövdeli Fanlı Isıtıcı-Beyaz",
			"sku": "EVFAKHOBBYSPRE-B",
			"product_category": "fanli-isiticilar",
			"product_category_id": "80081039",
			"brand": "Fakir",
			"price": "199.00"
		}
	],
	"session_id": "3d3b-4fcf-859b-972410ed9701",
	"create_date": "2017-06-22 17:30"
}
'


curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"HBSKU000001",
    "product_name":"Decorotika Next Çalışma Masası",
    "sku":"HBSKU000001",
    "category":"Çalışma Masası",
    "category_id":"18043090",
    "product_category":"calisma-masasi",
    "product_category_id":"18043090",
    "brand":"Decorotika",
    "price":"119.90",
    "session_id":"1d3b-4fcf-859b-972410ed9701",
    "create_date" : "2017-06-21 17:27",
    "device" : "desktop",
    "referral": "google"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"HBSKU000002",
    "product_name":"Decorotika Next Çalışma Masası",
    "sku":"HBSKU000002",
    "category":"Çalışma Masası",
    "category_id":"18043091",
    "product_category":"calisma-masasi",
    "product_category_id":"18043090",
    "brand":"Decorotika",
    "price":"119.90",
    "session_id":"1d3b-4fcf-859b-972410ed9702",
    "create_date" : "2017-06-21 13:27",
    "device" : "desktop",
    "referral": "google"
}
'

curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"HBSKU000003",
    "product_name":"Decorotika Next Çalışma Masası",
    "sku":"HBSKU000003",
    "category":"Çalışma Masası",
    "category_id":"18043091",
    "product_category":"calisma-masasi",
    "product_category_id":"18043090",
    "brand":"Decorotika",
    "price":"119.90",
    "session_id":"1d3b-4fcf-859b-972410ed9703",
    "create_date" : "2017-03-21 13:27",
    "device" : "desktop",
    "referral": "google"
}
'
curl -XPOST 'localhost:9200/events/product_view/?pretty' -H 'Content-Type: application/json' -d'
{
    "event_name" : "product_view",
    "product_id":"HBSKU000003",
    "product_name":"Decorotika Next Çalışma Masası",
    "sku":"HBSKU000003",
    "category":"Çalışma Masası",
    "category_id":"18043091",
    "product_category":"calisma-masasi",
    "product_category_id":"18043090",
    "brand":"Decorotika",
    "price":"119.90",
    "session_id":"1d3b-4fcf-859b-972410ed9703",
    "create_date" : "2017-03-21 13:27",
    "device" : "desktop",
    "referral": "google"
}
'