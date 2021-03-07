# asynchronous javascript

* [event_loop](event_loop)

## asynchronous operations example:
- network I/O, waiting for response from server
- database access
- user input


## mechanisms for handling asynchronous operations:
1. [callback_function](callback_function)
2. [promises](promises)
3. [event_emitters](event_emitters)
4. [reactive_programming](reactive_programming)
5. [async_functions](async_functions)


## Promises
Provides a single future value
Not Cancellable

## Observable
Emits multiple values over time
Cancellable
Supports map, filter, reduce operators



## fetch
- Promise
fetch("https://api.randomuser.me/?nat=US&results=1")
  .then(res => res.json())
  .then(json => json.results)
  .then(console.log)
  .catch(console.error);

- async/await
const getPersons = async () => {
try {
  let res = await fetch("url");
  let { results } = res.json();
  console.log(results);
  } catch (error) {
    console.error(error)
  }
}

## sources
Reactive Programming with RxJS 5 - Sergi Mansilla

