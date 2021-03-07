# Observable
An Observable represents a stream of data.
RxJs is push based: An Observable emits values in order. It pushes values to consumers as they become available.
An Observable doesn't start streaming items until it has at least one Observer subscribed to it.
Observable can signal when the sequence is completed.

## Creating Observable
```javascript
const observable = Observable.create(observer => {
  observer.next("a");
  observer.next("b");
  observer.complete();
});
```

## Observer interface
Whenever an event happens in Observable, it calls the related method in all of its Subscribers. Subscribers has to implement the Observer interface:
  next(v)
  complete()
  error(err)

```javascript
const subscriber = Subscriber.create(
  value => console.log(value),
  error => consle.log(error),
  () => console.log('Completed')

 // or

observable.subscribe({
  next(v) { console.log(`Value: ${v}`); },
  error(err) { console.log(`Error: ${err}`); },
  complete() { console.log("Completed"); }
});

  // or

observable.subscribe(
  value => console.log(value),
  error => console.log(error),
  () => console.log('Completed')
);
```

## Canceling Sequences
We can cancel a running Observable.
- Explicit Cancellation: We get a Subscription on subscribing on which we can call "ussubscribe" method.
- Implicit Cancellation: Operators cancel for you, like range, take.

## Error Handling
Whenever error happens, the Observable stops emiting items, and complete is not called.

- catch operator allows us to react to an error. "catch" takes either an Observable or a function that receives the error as a parameter and returns another Observable.
```javascript
const caught$ = observable.catch(of({ error: "There was error" }));
caught$.subscribe(
  v => console.log(v),
  err => console.log(err.message) //
);
```

- retry operator: retries the whole Observable sequence again, even if some of the items didn't error.
```javascript
observable.retry(4);
```

## Hot and Cold Observables
Hot Observables emit values regardless of having any Subscribers.
Cold Observables emit the entire sequence of values from start to the every Subscriber.

Mouse events is an example of hot Observables.
```javascript
Observable.fromEvent(document, "mousemove");
```

range, interval operators return a cold Observable.

We can trun a cold Observable into a hot one using publish. A published Observable is actually a ConnectableObservable, which has an extra method called connect that we call to start receiving values.

```javascript
const source = Observable.interval(1000);
const publisher = source.publish();
publisher.connect();
```
