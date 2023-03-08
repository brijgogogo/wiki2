## Apache Lucene
- written by Doug Cutting in 1999
- search engine library in Java
- provides indexing, search, spellcheck, hit highlighting, analysis/tokenization

Index: a data structure which you create along with your data and which is meant to allow faster searches.
Lucene uses "inverted indexing": it creates a data structure where it keeps a list of where each word belongs.

Disadvantage/tradeoff of using indexes: indexes take space and adding new data will be slower.



## Challanges in Search engines
- detect typos (fuzzy search can help)
- provide suggestions
- break down results into categories
- relevant results: relevancy score to sort the results
- support derivatives (bicycle, bicyclist, cycling)
- statistics/aggregation when users don't know what to search for
- provide suggestions as user types
