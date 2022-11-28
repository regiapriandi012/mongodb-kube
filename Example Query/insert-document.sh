mongo --eval 'db.inspections.insert({
      "_id" : ObjectId("56d61033a378eccde8a8354f"),
      "id" : "10021-2015-ENFO",
      "certificate_number" : 9278806,
      "business_name" : "ATLIXCO DELI GROCERY INC.",
      "date" : "Feb 20 2015",
      "result" : "No Violation Issued",
      "sector" : "Cigarette Retail Dealer - 127",
      "address" : {
              "city" : "RIDGEWOOD",
              "zip" : 11385,
              "street" : "MENAHAN ST",
              "number" : 1712
         }
  })'

mongo --eval 'db.inspections.insert({
      "id" : "10021-2015-ENFO",
      "certificate_number" : 9278806,
      "business_name" : "ATLIXCO DELI GROCERY INC.",
      "date" : "Feb 20 2015",
      "result" : "No Violation Issued",
      "sector" : "Cigarette Retail Dealer - 127",
      "address" : {
              "city" : "RIDGEWOOD",
              "zip" : 11385,
              "street" : "MENAHAN ST",
              "number" : 1712
         }
  })'

mongo --eval 'db.inspections.find({"id" : "10021-2015-ENFO", "certificate_number" : 9278806}).pretty()'

mongo --eval 'db.inspections.insert([ { "test": 1 }, { "test": 2 }, { "test": 3 } ])'

mongo --eval 'db.inspections.insert([{ "_id": 1, "test": 1 },{ "_id": 1, "test": 2 },
{ "_id": 3, "test": 3 }])'

mongo --eval 'db.inspections.find({ "_id": 1 })'

mongo --eval 'db.inspections.insert([{ "_id": 1, "test": 1 },{ "_id": 1, "test": 2 },
{ "_id": 3, "test": 3 }],{ "ordered": false })'

mongo --eval 'db.inspection.insert([{ "_id": 1, "test": 1 },{ "_id": 3, "test": 3 }])'