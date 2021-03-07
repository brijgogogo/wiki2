# Operators
Operators are functions that allow complex asynchronous code to be easily composed in a declarative manner.

Kinds of operators:
1. Pipeable operators: that can be piped to Observable (observableInstance.pipe(operator()). They do not change the existingg Observable instance. They return a new Observable, whose subscription logic is based on the first Observable.
Examples: filter(...), mergeMap(...)
2. Creation operators: They create an observable with some common predefined behavior or by joining other Observables.
Examples: of(...), map(x => x * x)(of(1,2.3)).subscribe(...), first()(of(1,2,3)).subscribe(...), interval(1000)

## Observable pipeline
An Observable pipeline is a group of operators chained together, where each one takes an Observable as input and returns an Observable as output.

```javascript
from([1,2,3,4])
.filter(v => v % 2)
.map(v => v * 10);
```

- Using pipeable operations can become unreadable like op4()(op3()(op1()(obs))). Observable have a method called `.pipe()` that makes is easier to read:
```typescript
  obs.pipe(
    op1(),
    op2(),
    op3(),
    op3()
  )
```

## Types of operators based on purpose
- Creation
- Transformation
- Filtering
- Joining
- Multicasting
- Error handling
- Utility

## Creation operators
- create

- from: make array or iterable object into Observable
```javascript
const arr = [1,2,3];
from(arr).subscribe(value => {
   console.log(value);
});
```


- fromEvent: transform an event into an Observable
```javascript
const allMoves$ = fromEvent(document, "mousemove");
allMoves$.subscribe(e => console.log(e.clientX, e.clientY));
```

- fromPromise

- bindCallback / bindNodeCallback: creates Observables from callback functions. Node passes extra error argument.
```javascript
  const readdir$ = Observable.bindNodeCallback(fs.readdir);
  const source$ = readdir$("/my/dir"); // send a delayed message
  const subscription = source$.subscribe(
    res => console.log(`Directories: ${res}`),
    error => console.log(error),
    () => console.log('Done')
  );
```


- range: returns an Observable that emits all integers within specified range
```javascript
range(1,3);
```

- interval: returns an Observabel that yeilds incremental numbers at a given interval of time, expressed in milliseconds.


## Join Creation Operators  (creation + join)
- combineLatest
- concat
- forkJoin
- merge: takes two different Observable and returns a new one with the merged values.
- partition
- race
- zip

## Transformation operators
- exhaust
- map: applies a function to each of the values in the source, returns new Observable with transformed values.
- pluck
- switchMap
- pairwise: groups each emitted value with the previously emitted value in an array
- bufferTime: we can buffer incoming values and release them as an array every x period of time.
- scan: acts like reduce but emits each intermediate result.

## Filtering Operators
- distinct (similar to filter)
- filter: runs the value through predicate function, and returns Observable for values with true result.
```javascript
const movesOnTheRigh$ = allMoves$.filter(
  e => e.clientX > window.innerWidth / 2
)
```
- first: takes operation predicate function, and returns first element that satisfies the condition in the predicate.
- last
- skip
- take
- takeLast
- takeUntil
- takeWhite
- throttle
- debounce
- distinctUntilChanged: filters out identical results unless a different one is emitted in between.
- startWith

## Join Operators
- combineAll
- flatMap/mergeMap: takes an Observable A whose elements are also Observables, and returns an Observable with the flattened values of A's child Observables.
```javascript
const values$ = from([
  of(1, 2, 3),
  of(4, 5, 6),
  of(7, 8, 9),
]);
values$.flatMap(v => v).subscribe(v => console.log(v));
```
- concatAll: same as flatMap without the mapping function (which returns observable for each element)
```javascript
const values$ = from([
  of(1, 2, 3),
  of(4, 5, 6),
  of(7, 8, 9),
]);
values$.concatAll().subscribe(v => console.log(v));
```
concatAll() operator subscribes to each "inner" Observable that comes out of "outer" Observable, and copies all emitted values until that Observable completes, and goes on to the next one.
```javascript
const fileObservable = urlObservable.pipe(
  map(url => http.get(url)),
  concatAll(),
);
```

- mergeAll(): subscribes to each inner Observable as it arrives, then emits each value as it arrives.
- switchAll(): subscribes to the first inner Observable when it arrives, and emits each value as it arrives, but when the next inner Observable arrives, unsubscribes to the previous one, and subscribes to the new one.
- exhaust(): subscribes to the first inner Observable when it arrives, and emits each value as it arrives, discarding all newly arriving inner Observables until that first one completes, then waits for the next inner Observable.

## Multicasting Operators
- multicast
- publish
- share

## Error Handling Operators
- catchError
- retry
- retryWhen

## Utility Operators
- tag
- delay
- materialize
- toArray

## Conditional & boolean operators
- defaultIfEmpty
- every
- find
- findIndex
- isEmpty


## Mathematical & Aggregate operators
Process and entire sequence and return a single value.

- reduce/fold: returns a new observable that has a single item by applying a function over each item.
```javascript
const src = Observable.range(1, 5).reduce((acc, x) => acc + x);
```
- count
- max
- min


## Custom operators
- using pipe()
```javascript
function discardOddDoubleEven() {
  return pipe(
      filter(v => !(v%2)),
      map(v => v + v)
    );
}
```
- using Observable constructor





## Sources
https://rxjs-dev.firebaseapp.com/guide/operators
