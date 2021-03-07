# rxjs
RxJS is Javascript implementation of Reactive Extensions or Rx. It provides a common interface to combine and transform data from wildly different sources.
Inventor - Erik Meijer



Javascript developers usually write asynchronous code using callbacks, promises, and events.
1. A callback is a function passed as a parameter to another function that performs an asynchronous operation. When it is done, it calls back with the result of the operation.
  Disadvantagse:
  - Callback hell: lots of nested calbacks, code stops being linear and becomes hard of reason about.
  - Callbacks break the traditional try/catch mechanism, and rely on the programmer to check for errors and pass them around.
2. Promises represents the result of an asynchronous operation. Calling an asynchronous function immediately returns a promise that will eventually be either resolved with the result or rejected with an error.
  Disadvantages:
  - They only ever yield a single value. This makes them useless for handling recurrent events such as mouse clicks or strams of data coming from server.
3. Event Emmiters: When we emit an event, event listeners that are subscribed to it will fire.
  Disadvantages:
  - event listener functions always ignore their return values.
  - Events are not first-class values.
  - It is easy to miss events if we start listening too late.

## Reactive Programming
Reactive programming focuses on propagating changes without our having to explicitly specify how the propagation happens. This allows us to state what our code should do, without having to code every step to do it.

Reactive programming is expressive. We dont' care how it happens internally, we just express what we want our code to do, and not how to do it.

- [Observable](Observable.md)
- [Operators](Operators.ms)


Observable pipelines dont' create intermediate Observables and apply all operations to each element in one go.

- [Subject](Subject.md)





## Sources
Reactive Programming with RxJS 5 - Manning
www.reactivex.io/rxjs
