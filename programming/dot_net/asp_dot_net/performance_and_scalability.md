# Performance & Scalability
Performance is how fast our API can deal with a single request and make a response.
Scalability is the amount of concurrent requests our API can deal with before it slows down significantly.

To work on performance and scalability: do profiling and load testing

## profilers
application: Stackify Prefix,  Application Insights in Visual Studio, Visual Studio Memory Profiler (Debug -> Windows -> Show Diagnostic Tools)
database: SQL Server Profiler

## load testing
websurge, Viausl Studio Load Testing (Enterprise version) (Web Performance and Load Test project), BenchmarkDotNet

## tips
Entity Framework vs Dapper vs plain-sql
Sql Server Isolation Level - Read Committed ?
get multiple record sets in one database hit
use paging
filtering & searching: indexes, full-text index
asp.net response caching
asp.net server caching


## sources
https://www.carlrippon.com/scalable-and-performant-asp-net-core-web-apis-introduction/

