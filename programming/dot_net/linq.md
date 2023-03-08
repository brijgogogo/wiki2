# LINQ

## Expression Tree
```c#
// https://docs.microsoft.com/en-us/archive/blogs/charlie/expression-tree-basics
// delegate, lambda, executable
Func<int, int, int> function = (a, b) => a + b;
Console.WriteLine(function(3, 5));


// code to data
// expression tree, not executable
Expression<Func<int, int, int>> expression = (a, b) => a + bad
// expression:
//  - body
//  - parameters
//  - NodeType: ExpressionType: "Lambda"
//  - Type: Type : "Func<Int32, Int32, Int32>"

// data to code
function = expression.Compile();
```
## IEnumerable<T> vs IQueryable<T>
- If code can be executed in process then the job can be done with the simple type called IEnumerable<T>
- If you need to translate a query expression into a string that will be passed to another process, then use IQueryable<T> and expression trees.

