# iterators
An iterator is a method or property implemented with an iterator block, which is in turn just a block of code using the yield return or yield break statements, having return type:
- IEnumerable, IEnumerable<T>, IEnumerator, IEnumerator<T>

 The yield return statements provide values for the returned sequence, and a
yield break statement will terminate a sequence. Similar constructs, sometimes
called generators, exist in some other languages, such as Python.

Iterators are executed lazily.

An IEnumerable is a sequence that can be iterated over.
IEnumerator is like a cursor within a sequence.

[[q1]]

If you don’t call Dispose on an iterator (and you haven’t iterated to the end of the sequence), you can leak resources or at least delay cleanup. This should be avoided. "foreach" has a hidden "using" statement, which does it.

## source
C# in Depth - Jon Skeet

