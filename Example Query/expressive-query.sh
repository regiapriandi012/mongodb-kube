mongo --eval 'db.trips.find({ "$expr": { "$eq": [ "$end station id", "$start station id"] }
              }).count()'

mongo --eval 'db.trips.find({ "$expr": { "$and": [ { "$gt": [ "$tripduration", 1200 ]},
                         { "$eq": [ "$end station id", "$start station id" ]}
                       ]}}).count()'

mongo --eval 'db.companies.find(
  { "$expr": { "$gt": [ "$founded_year", "$number_of_employees" ] } }
).count()'


mongo --eval 'db.companies.find(
    { "$expr": { "$lt": [ "$founded_year", "$number_of_employees" ] } }
  ).count()'


mongo --eval 'db.companies.find({ "number_of_employees": { "$gt":  "$founded_year" }
                  }).count()'


mongo --eval 'db.companies.find(
    { "$expr": { "$gt": [ "$number_of_employees", "$founded_year" ]} }
  ).count()'
