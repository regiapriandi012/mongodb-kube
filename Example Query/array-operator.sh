mongo --eval 'db.listingsAndReviews.find({ "amenities": {
                                  "$size": 20,
                                  "$all": [ "Internet", "Wifi",  "Kitchen",
                                           "Heating", "Family/kid friendly",
                                           "Washer", "Dryer", "Essentials",
                                           "Shampoo", "Hangers",
                                           "Hair dryer", "Iron",
                                           "Laptop friendly workspace" ]
                                         }
                            }).pretty()'

mongo --eval 'db.listingsAndReviews.find(
  { "amenities":
      { "$all": [ "Free parking on premises", "Wifi", "Air
        conditioning" ] }, "bedrooms": { "$gte":  2 } } ).pretty()'

mongo --eval 'db.listingsAndReviews.find(
  { "amenities": "Free parking on premises", "amenities": "Wifi",
    "amenities": "Air conditioning", "bedrooms": { "$gte": 2 }
  }).pretty()'

mongo --eval 'db.listingsAndReviews.find(
  { "amenities":
      { "$all": [ "Free parking on premises", "Wifi", "Air
                  conditioning" ] },
    "bedrooms": { "$lte": 2 } }).pretty()'


mongo --eval 'db.listingsAndReviews.find(
   { "amenities": [ "Free parking on premises", "Wifi", "Air
                    conditioning" ]},
     "bedrooms": { "$gte": 2 } } ).pretty()'

mongo --eval 'db.listingsAndReviews.find({ "amenities":
        { "$size": 20, "$all": [ "Internet", "Wifi",  "Kitchen", "Heating",
                                 "Family/kid friendly", "Washer", "Dryer",
                                 "Essentials", "Shampoo", "Hangers",
                                 "Hair dryer", "Iron",
                                 "Laptop friendly workspace" ] } },
                            {"price": 1, "address": 1}).pretty()'

mmongo --eval 'db.listingsAndReviews.find({ "amenities": "Wifi" },
                           { "price": 1, "address": 1, "_id": 0 }).pretty()'

mongo --eval 'db.listingsAndReviews.find({ "amenities": "Wifi" },
                           { "price": 1, "address": 1,
                             "_id": 0, "maximum_nights":0 }).pretty()'

mongo --eval 'db.grades.find({ "class_id": 431 },
               { "scores": { "$elemMatch": { "score": { "$gt": 85 } } }
             }).pretty()'

mongo --eval 'db.grades.find({ "scores": { "$elemMatch": { "type": "extra credit" } }
               }).pretty()'