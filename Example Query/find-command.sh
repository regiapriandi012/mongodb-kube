mongo --eval 'db.zips.find({"state": "NY"}).count()'

mongo --eval 'db.zips.find({"state": "NY", "city": "ALBANY"})'

mongo --eval 'db.zips.find({"state": "NY", "city": "ALBANY"}).pretty()'