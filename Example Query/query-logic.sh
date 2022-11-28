mongo --eval 'db.routes.find({ "$and": [ { "$or" :[ { "dst_airport": "KZN" },
                                    { "src_airport": "KZN" }
                                  ] },
                          { "$or" :[ { "airplane": "CR2" },
                                     { "airplane": "A81" } ] }
                         ]}).pretty()'

mongo --eval 'db.inspections.find(
  { "$or": [ { "date": "Feb 20 2015" },
             { "date": "Feb 21 2015" }],
    "$not": { "sector": "Cigarette Retail Dealer - 127" }}).pretty()'

mongo --eval 'db.inspections.find(
  { "$and": [
      { "$or": [
                 { "date": "Feb 20 2015" },
                 { "date": "Feb 21 2015" } ] },
      {"sector": { "$ne":"Cigarette Retail Dealer - 127" }}]
  }).pretty()'

mongo --eval '
db.inspections.find(
  { "$or": [ { "date": "Feb 20 2015" },
             { "date": "Feb 21 2015" } ],
    "sector": { "$ne": "Cigarette Retail Dealer - 127" }}).pretty()'