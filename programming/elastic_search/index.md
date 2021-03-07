# Elastic Search
- open-source
- Came out in 2010
- distributed model - makes it scale out easily and efficiently
- built on top of Apache Lucene search engine library (Lucene: allows to implement search functionality in Java application)
- REST API: data can be sent over HTTP in JSON to index, search, and manage your Elasticsearch cluster
- has Java API
- full-text search
- multi-tenancy
- Distributed search
- Analytical search
- Grouping & aggregation

Uses:
- Product search
- real-time analytics of social media
- application logs or other flowing data

Search of data:
- relevant search results
- return statistics
- doing all that quickly
- detecting typos (bicycel -> bicycle)
- support derivatives (bicyclist -> bicycle, clycling)
- providing suggestions
- break down results into categories

You can deploy a search engine on top of a relational database to create indices and speed up the SQL queries.
You can index data from your NoSQL data store to add search capabilities.
You can use Elasticsearch as a data store. Data is represented as documents (NoSql) in Elasticsearch.


Index: a data structure which you create along with your data and which is meant to allow faster searches.
Lucene uses "inverted indexing": it creates a data structure where it keeps a list of where each word belongs.

Index takes up disk space, adding new data will be slower as indexes have to be updated

Relevancy score: a number assigned to each document that matches your search criteria and indicates how relevant the given document is to the criteria.
Default algorithm used to calculate document's relevancy score: TF-IDF (term frequency - inverse document frequency)
Factors in TF-IDF algo:
- Term frequency: The more times the words appear in a document, the higher the score.
- Inverse document frequency: the weight of each word is higher if the word is uncommon across other documents

Elasticsearch allows you to change the algorithm, boost score of a particular field, use script to add custom criteria (like number of likes on page, newer posts, etc.)

Aggregations: way to get counters from the results of your query, like how many topics fall into each catetory, average number of likes and shares for each of those categories.


JSON search can include queries, filters, aggregations.
Filters: to exclude or include results

Analysis: the words from the text you're indexing become terms in Elasticsearch. For example, if you index the text "bicycle race", analysis mae produce the terms "bicycle", "race", "cycling", "racing", etc and when you search any of those terms, the corresponding document is included in the results.  The same analysis process applies when you search.

The default analyzer breaks texts into words by looking for common word separators like space or comma. Then it lowercases those words.


By default Elasticsearch stores your documents as they are, and it also puts all the terms resulting from analysis into the inverted index.


Each cluster has a master node, responsible for knowing which nodes are in the cluster and where all the shards are located. Each time the master is unavailable, a new one is elected.


## installation
- arch linux
package: elasticserach
start/enable elasticsearch.service
test: curl http://127.0.0.1:9200
configuration file: /etc/elasticsearch/elasticsearch.yml
restrict access to host: network.host: 127.0.0.1 (config file)


### tools
Process logs and output to Elastic search:
- Rsyslog
- Logstash
- Apache Flume

To search and analyze logs in visual interface:
- Kibana
Kibana offers analytics and search dashboard for ElasticSearch, as well as visualization capabilities for data stored in Elasticsearch.


* [dot_net_clients](dot_net_clients)

