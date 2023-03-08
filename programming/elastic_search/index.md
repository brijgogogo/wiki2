# Elasticsearch
- distributed search and analytics engine
- based on Apache Lucene
- created in 2010
- open-source
- no-sql: data is represented in documents (json)
- REST api: data can be sent over HTTP in JSON to index/search/manage
- caching, real-time analytics
- full-text search
- multi-tenancy
- Grouping & aggregation

## index
collection of documents

## document
collection of fields (key-value pairs)

Text fields are stored in inverted indices.
Numeric and geo fields are stored in BKD trees.

Schema-free: documents can be indexed without explicitly specifhing how to handle different fields that might occur in a document.
Dynamic mapping: Elasticsearch automatically detects and adds new fields to the index.

## Searching
- structured query (get specific fields ordered by specific field)
- full text query (get documents matching query string, sorted by relevance)
  - phrase search, similarity search, prefix search, autocomplete suggestions

## Query language
- Query DSL (JSON style)
- SQL-style queries

## Analyzing data
- aggregates: build summaries
  - count, average, median, over a period of time, popularity, unusual, anomaly

## Search of data:
- relevant search results
- return statistics
- doing all that quickly
- detecting typos (bicycel -> bicycle)
- support derivatives (bicyclist -> bicycle, clycling)
- providing suggestions
- break down results into categories


Elasticsearch doesn't support transactions, complext relationships.

Elasticsearch allows you to change the algorithm, boost score of a particular field, use script to add custom criteria (like number of likes on page, newer posts, etc.)

## Relevancy score
A number assigned to each document that matches your search criteria and indicates how relevant the given document is to the criteria.

Elasticsearch allows you to boost the relevancy score of a particular field. You can also add custom criteria to influence the relevancy score.

Default relevancy score algorithm: TF-IDF.
`TF-IDF` (ter frequency-inverse document frequency)
- term frequency: the more times the (searched) word occurs in a document, the higher the score.
- inverse document frequency: the weight of each word is higher if the word is uncommon across other documents.



* Approaches to using Elasticsearch:
- use as only data-store
- use along with your current data-store
  - need to keep both data-stores synchronized (Elasticsearch pluging or your service)
  - Elasticsearch is used solely for searches

## installation
- arch linux
  - package: elasticserach
  - start/enable elasticsearch.service
  - test: curl http://127.0.0.1:9200
  - configuration file: /etc/elasticsearch/elasticsearch.yml
  - restrict access to host: network.host: 127.0.0.1 (config file)
  - port 9200 is used for HTTP communication by default (REST API).
  - port 9300 is used for inter-node communication, called transport.

## Distributed
Each cluster has a master node, responsible for knowing which nodes are in the cluster and where all the shards are located. Each time the master is unavailable, a new one is elected.

The gateway is the component of Elasticsearch responsible for persisting your data to disk so you don't lose it if the node goes down. It also loads/restores the data when the node is started.


## Aggregations
Way to get counters from the results of your query, like how many topics fall into each catetory, average number of likes and shares for each of those categories.


JSON search can include queries, filters, aggregations.
Filters: to exclude or include results

## Analysis
The words from the text you're indexing become terms in Elasticsearch. For example, if you index the text "bicycle race", analysis mae produce the terms "bicycle", "race", "cycling", "racing", etc and when you search any of those terms, the corresponding document is included in the results.  The same analysis process applies when you search.

The default analyzer breaks texts into words by looking for common word separators like space or comma. Then it lowercases those words.


By default Elasticsearch stores your documents as they are, and it also puts all the terms resulting from analysis into the inverted index.


Each cluster has a master node, responsible for knowing which nodes are in the cluster and where all the shards are located. Each time the master is unavailable, a new one is elected.


## tools
Process logs and output to Elastic search:
- Rsyslog
- Logstash
- Apache Flume

To search and analyze logs in visual interface:
- Kibana
Kibana offers analytics and search dashboard for ElasticSearch, as well as visualization capabilities for data stored in Elasticsearch.


* [dot_net_clients](dot_net_clients)

* [data_organization](data_organization.md) (document, type, index, shard)


# Indexing
Create index first as:
- Creating index takes more time than creating a document.
- allows you to specify settings other than defaults

- Create Index
curl -XPUT 'localhost:9200/new-index'
{"acknowledged": true}

- create document
http://localhost:9200/index-name/type-name/document-id
curl -XPUT 'localhost:9200/index/type/1?pretty' -d '{
  "name": "val",
  "age": 10
}'
If the index or type didn't exist, it will be created.
Elasticsearch can generate IDs.
Index response also returns version of the document, which begins at 1 and is incremented with each update.

- get all mappings
curl 'localhost:9200/idx/_mapping'
- get specific mappings
curl 'localhost:9200/idx/_mapping/type?pretty'
- delete index
curl -s -XDELETE "$ADDRESS/idxName"
- Wait for index to become yellow
curl -s "$ADDRESS/idx/_health?wait_for_status=yellow&timeout=10s" > /dev/null
- Refresh so data is available
curl -s -XPOST "$ADDRESS/idx/_refresh"

## Scripting
Allows you to evaluage custom expressions. e.g.:
  - return a computer value as a field
  - evaluate a custom score for a query

Default scripting language: "Painless"


## Tools
Elasticsearch Head
Elasticsearch Cerebero
Marvel


## Sources
Elasticsearch in Action (Radu, Matthew)
https://www.elastic.co/guide/en/elasticsearch/reference/current/elasticsearch-intro.html
