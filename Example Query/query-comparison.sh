mongo --eval 'db.trips.find({ "tripduration": { "$lte" : 70 },
                "usertype": { "$ne": "Subscriber" } }).pretty()'

mongo --eval 'db.trips.find({ "tripduration": { "$lte" : 70 },
                "usertype": { "$eq": "Customer" }}).pretty()'

mongo --eval 'db.trips.find({ "tripduration": { "$lte" : 70 },
                "usertype": "Customer" }).pretty()'