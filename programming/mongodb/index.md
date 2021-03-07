# mongodb

## basics
use dbName (switch or create database)
show dbs (to see all databases)
db.createCollection('collectionName'); (to create a collection)
db.collectionName.insert({ "name": "brij" });
show collections
db.collectionName.remove({"name": "Brij"}) (to delete documents from a collection)
db.dropDatabase();


## query
db.collectionName.find();
db.collectionName.find().pretty();
db.collection.find({"age": { $gt: 20 }});
db.col.find({"age": { $gte: 13, $lte: 18 }});
db.col.find().pretty().limit(3);
db.col.find()

(number of documents in a collection)
db.runCommand({count: "collectionName"})

(skip documents)
db.col.aggregate({$skip:6});

(execution plan)
db.col.find().explain();

## modifications
db.collectionName.update({"name" : "Brij"}, {$set: { "age": 20 }});

(updating embedded field)
db.collectionName.update({"id":1}, {$set: { "address.home": "newValue"}});

(to update multiple documents)
db.collectionName.update({"name": "Brij"}, {$set: {"City": "Delhi"}}, { multi: true });

(replace the document)
db.collectionName.update({"name": "Brij"}, {"name": "BBB", "City": "Delhi" });

(rename a field)
db.col.update({"name": "Brij"}, {$rename: {"name", "Name"}});





