# Subject class
A Subject is a type that implements both Observer and Observable types. As an Observer, it can subscribe to Observables, and as an Observable it can produce values and have Observer subscribe to it.


```javascript
const subject$ = new Subject();
const source$ = interval(300).map(v => `message #${v}`).take(5);
source$.subscribe(subject$);
subject$.subscribe(
  next => console.log('`Next: ${next}`),
  error => console.log(`Error: ${error.message}`),
  () => console.log('Completed')
);
subject$.next('1');
subject$.next('2');
setTimeout(subject$.complete, 1000);
```

## AsyncSubject
Emits the last value of a sequence only if the sequence completes. This value is then cached forever, and any Observer that subscribes after the value has been emitted will receive it right away.

## BehaviorSubject
When an Observer subscribes to a BehaviorSubject, it receives the last emitted value and then all subsequent values. BehaviorSubject requires that we provide a starting value, so that all Observers will always receive a value when they subscribe to it.

## ReplaySubject
A ReplaySubject caches its values and re-emits them to any Observer that subscribes late to it.
Cached values can be limited by:
  - buffer size: cache only last N values
  - time: cache values emitted in last N milliseconds

