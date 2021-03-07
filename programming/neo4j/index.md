# neo4j

- [GraphDatabase](GraphDatabase)
- ACID compliant
- Implemented in Java
- Has Rest API
- Cypher query language



## Node
- schemaless entities/objects
- contains properties
- can have labels
- a node always has an implicit property with the id of the node (auto incremented number)

## Properties
- key = string
- value = primitive data type
- supports indexing
- supports unique constraint

## data types
boolean
integer
float
point (spatial)
date
time
dateTime
duration
string (Unicode)
arrays

- Data type is set implicitly
- Automatic conversion when updating
- No nulls: if you don't need a property, just omit it

== Relationship ==
- connect nodes
- directed
- named




== Cypher ==
- Graph query language
- Declarative
- Works with clauses
- Pattern matching - partial graph

- Syntax
() -[:PLAYED]->()
(:Actor) -[:PLAYED]->(:Character)
(:Actor {name:'Matt'}) -[:PLAYED]->(:Character)


- Return node
MATCH
(:Actor {name:'Matt'}) -[:PLAYED]->(c:Character)
RETURN c

- Return property
MATCH
(:Actor {name:'Matt'}) -[:PLAYED]->(c:Character)
RETURN c.Name


- Alias
MATCH
(:Actor {name:'Matt'}) -[:PLAYED]->(c:Character)
RETURN c.name as Name

- Optional variables
MATCH (actors:Actor)-[:PLAYED]->(others)
RETURN actors.name, others.name

- Other direction of relationship
MATCH (:Character{name:'Doctor'})<-[:ENEMY_OF]-(:Character)-[:COMES_FROM]->(p:Planet)
RETURN p.name as Planet, count(p) AS Count

- collect
MATCH (:Actor{name:'Matt'})-[:APPEARED_IN]->(ep:Episode) <-[:APPEARED_IN]- (:Character{name:'Amy'}),
(ep) <-[:APPEARED_IN]-(enemies:Character)<-[:ENEMY_OF]-(:Character{name:'Doctor'})
RETURN ep AS Episode, collect(enemies.name) AS Enemies


- WHERE
MATCH (a:Actor) -[:PLAYED]-> (c:Character)
WHERE a.name = 'Matt'
RETURN c

- OrderBy
MATCH (a:Actor) -[:PLAYED]-> (c:Character)
WHERE a.name = 'Matt'
RETURN c
ORDER BY c.name DESC

- Skip and Limmit
MATCH (a:Actor) -[:PLAYED]-> (c:Character)
WHERE a.name = 'Matt'
RETURN c
LIMIT 10
SKIP 5


- UNION
MATCH (a:Actor)
RETURN a.name
UNION ALL
MATCH (C:Character)
RETURN c.name


- WITH : manipulate result set
MATCH
(a:Actor)
WITH a.name as name, count(a) AS count ORDER BY name
WHERE count > 10
RETURN name

- Predicates : ALL, ANY, NONE, SINGLE, EXISTS
MATCH (a:Actor)
WHERE EXISTS ((a)-[:PLAYED]->())
RETURN a.name

- Scalar functions : LENGTH, TYPE, ID< COALESCE, HEAD, LAST, TIMESTAMP, TOINT, TOFLOAT, TOSTRING
MATCH
p = (:Actor)-[:PLAYED]->(:Character)
RETURN LENGTH(p)

- Collection Functions: NODES, LABELS, RELATIONSHIPS, RANGE, REDUCE, EXTRACT, FILTER< TAIL
MATCH
p = (:Actor)-[:PLAYED]->(:Character)
RETURN NODES(p)

- Mathematical Functions : ABS, SQRT, FLOOR, ROUND...
- String Functions: STR, REPLACE, SUBSTRING, TRIM, LOWER< UPPER, SPLIT

- Directionless Relationships
MATCH
(:Episode)-[:PREVIOUS]-(e:Episode)
RETURN e

- No relationship defined
MATCH
(:Episode)-->(e:Episode)
RETURN e

- Anonymous node
MATCH
(:Actor)-[]->()-[]->(p:Planet)
RETURN p

- Number of hops
MATCH
(:Actor)-[*2]->(p:Planet)
RETURN p


= Cypher data manipulation =
# Create : Creates Nodes and Relationhips
- Create empty node
CREATE(n)

- Create node with label and property
CREATE(n:Actor{name:'Peter'})
RETURN n

- Create relationship
MATCH (matt:Actor{name:'Matt Smith'}), chris:Actor{name:'Chris'}
CREATE (matt) [:REGENERATED_TO] (chris)


- creates two nodes and relationship
CREATE p =(:Actor{name: 'Pter'})-[:APPEARED_IN]->(:Episode{name:'The Time'})
RETURN p


# Delete :deletes nodes and relationhips

- Delete node
MATCH (peter:Actor{name:'Peter'})
DELETE peter

- Delete node, relationship
MATCH (matt:Actor{name: 'Matt'})-[r]-()
DELETE matt, r

# SET : manipulates properties
- add or update
MATCH (matt:Actor{name: 'Matt'})
SET matt.salary = 100, matt.active = true

- remove property
MATCH (matt:Actor{name: 'Matt'})
SET matt.salary = NULL

- copy all properties
MATCH (matt:Actor{name: 'Matt'}),
chris:Actor{name: 'Chris'}
SET matt = chris


- set lables
MATCH (matt:Actor{name: 'Matt'}),
SET matt:Doctor

- remove lables
MATCH (matt:Actor{name: 'Matt'}),
REMOVE matt:Doctor

- remove property
MATCH (matt:Actor{name: 'Matt'}),
REMOVE matt.salary

# MERGE : Returns or Creates
- creates node if it doesn't exist
MERGE (peter:Actor{name: 'Peter'})
RETURN peter

- Creates relationship if it doesn't exist
MATCH (peter:Actor{name:'Peter'}), (doctor:Character{name:'Doctor'})
MERGE (peter -[r:PLAYED]->doctor)
RETURN r

# FOREACH - helper to set Property or Label
MATCH p=(actors:Actor)-[r:PLAYED]->others)
WHERE actors.salary > 100
FOREACH (n IN nodes(p)| set n.done = true)


## Indexes
CREATE INDEX ON :Actor(name)
DROP INDEX ON :Actor(name)

## Unique Constraint
CREATE CONSTRAINT ON (a:Actor) ASSERT a.name IS UNIQUE
DROP CONSTRAINT ON (a:Actor) ASSERT a.name IS UNIQUE

== Neo4j API Types ==
- REST
- Bolt: proprietary protocol over TCP

# Bolt
Client sends Cyper to Neo4j
Neo4j sends Binary data to client
https://boltprotocol.org/

