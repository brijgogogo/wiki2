# enumeration
An enumerator is a read-only, forward-only cursor over a sequence of values.

An enumerator is an object that implements either of the following interfaces:
* System.Collections.IEnumerator
* System.Collections.Generic.IEnumerator<T>

## collection initializers
you can initialize an enumerable object in single step:
var values = new List<int> { 1, 2, 3 };
This requires that the enumerable object implements IEnumerable and has an Add method.

var d = new Dictionary<int, string>()
{
  { 5, "five" },
  {10, "ten" }
};

or
var d = new Dictionary<int, string>()
{
  [3] = "three",
  [10] = "ten"
};


## iterators
foreach statemetn is consumer of an enumerator
iterator is a produer of an enumerator


An iterator is a method, property, or indexer that contains one or more yeild statements. An iterator must return IEnumerable/IEnumerable<T>/IEnumerator/IEnumerator<T>

static IEnumerable<int> Fibs(int fibCount) {
  for(int i = 0; prevFib = 1, curFib = 1; i < fibCount; i++) {
    yield return prevFib;
    int newFib = prefFib + curFib;
    prevFib = curFib;
    curFib = newFib;
  }
}

Whereas a return statement expresses, "here's the value you asked me to return from this method", a `yield` return statement expresses "here's the next element you asked me to yeild from this enumerator". On each yield statement, control is returned to the caller, but the callee's state is maintained so that the method can continue executing as soon as the caller enumerates the next element.

