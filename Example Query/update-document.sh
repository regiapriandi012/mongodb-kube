mongo --eval 'db.zips.updateMany({ "city": "HUDSON" }, { "$inc": { "pop": 10 } })'

mongo --eval 'db.zips.updateOne({ "zip": "12534" }, { "$set": { "pop": 17630 } })'

mongo --eval 'db.zips.updateOne({ "zip": "12534" }, { "$set": { "population": 17630 } })'

mongo --eval 'db.grades.updateOne({ "student_id": 250, "class_id": 339 },
                    { "$push": { "scores": { "type": "extra credit",
                                             "score": 100 }
                                }
                     })'