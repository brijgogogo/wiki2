# Data organization in Elasticsearch

## Logical layout
- Document
  - documents are used for indexing and searching (document is like a row in relational database)
  - Documents are schema-free (not all your documents need to have the same fields). The type of field matters. Elasticsearch keeps a mapping of all your fields, their types and other settings. This mapping is specific to every type of every index.

- Types
  - documents are grouped into types (type is like a table in relational database)
  - Types are logical containers for documents.
  - Documents of different structures are put in different types.
  - Definition of fields in each tye is called a `mapping`. If a new document gets indexed with a field that's not already in the mapping, Elasticsearch automatically adds that new field to your mapping by guessing its type based on value. Its safe to define your mapping before indexing data.

- Indices
  - one or multiple types live in an index (index is like a database in relational database)
  - Indices are containers for mapping types.
  - Each index is stored on the diskin the same set of files, has its own settings.

Index setting `refresh_interval`: interval at which newly indexed documents are made available for searches. Default: every second.

You can search documents in a specific type of a specific index or across multiple types or even multiple indices.


## Physical layout
- Shard
  - Elasticsearch divides each index into shards.
  - A shard is a Lucene index (a directory of files containing inverted index). By default, it stores the original document's content plus additional information, such as `term dictionary` and `term frequencies`.
  - Technically, a shard is a directory of files where Lucene stores the data for your index.
  - A shard is the smallest unit that Elasticsearch moves from node to node.


By default, each index is made up of five `primary` shards, each with one `replica`.

- Replica
  - Replicas can serve searches. Replicas are promoted to primary shards in case the original primary becomes unavailable.
  - Replicas can be added or removed at runtime, - primaries can't - you have to decide on the number fo primary shards before creating an index. Too few shards limit how much you can scale, but too many shards impact performance. Default: 5.

- Node
Same data can be spread across multiple server, this helps in performance, reliability.
A node is an instance of Elasticsearch. Multiple nodes can join the same `cluster`. Starting nodes with same cluster name and otherwise default settings is enough to make a cluster.


- Term dictionary: maps each term to identifiers(key) of documents containing that term. This dictionary is looked to find matches for a search.
- Term frequencies: provides count of appearances of a term in a document (for calculating relevancy score).

- Horizontal Scaling: As you add more nodes to the same cluster, existing shards get balanced between all nodes.
- Vertical Scaling: You add more resources (RAM, CPU)to node .

- Indexing
Node that receives indexing request, first selects the shard to index the document. By default, documents are distributed evenly between shards. For each document, the shard is determined by hashing its ID string. Each shard has an equal hash range. Once the target shard is determined, the current node forwards the document to the node holding that shard. Subsequently that indexing operation is replayed by all the replicas of that shard.

- Searching
Node that receives the search request forwards it to a set of shards containing all your data. Search request is forwarded to a selected (using round-robin) shard (primary/replica). Elasticsearch gathers results from those shards, aggregates them into a single reply and replies to client app.
