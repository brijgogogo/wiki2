# promises
Instead of handing the continuation of our program to another pary (as in callbacks), we could expect it to return us a capability to know when its task finishes, and then our code could decide what to do next.

A promise represents the result of an async operation.
Calling an async function immediately returns a "promise", which will eventually be either resolved with the result or rejected with an error.

Added in ES2015

## drawbacks
only ever yield a single value, hence useless for handling recurrent events such as mouse clicks or streams of data coming from the server.


## example
// one promise that waits on multiple promises
var xyPromise = Promise.all([xPromise, yPromise]);
// when the promise is resolved
xyPromise.then(function(values){
  return values[0] + values[1];
})
.then(functions(sum){ // promise chaining
  console.log(sum);
})

## example
somePromise.then(
    // fullfillment handler
    function(sum) {
      console.log(sum);
    },
    //rejection handler
    function(err) {
      console.log(err);
    }
);

* Promises (once resolved) retain their same resolution (fulfillment or rejection) forever, and can subsequently be observed as many times as necessary.
* Promises are immutable once resolved.

## example
function foo(x) {
  //start doing something that could take a while

  return new Promise(function(resolve, reject){
    // eventually call resolve(..) or reject(..)
  });
}

var p = foo(42);
p.then(bar, oopsBar);
p.then(baz, oopsBaz);

* When a Promise is resolved, all  then(..)  registered callbacks on it will be called, in order, immediately at the next asynchronous opportunity (Jobs).

* A good practice is not to code in such a way where the ordering of multiple callbacks matters at all. Avoid that if you can.

## example - Promise.race()
// a utility for timing out a Promise
function timeoutPromise(delay) {
    return new Promise( function(resolve,reject){
        setTimeout( function(){
            reject( "Timeout!" );
        }, delay );
    } );
}
// setup a timeout for `foo()`
Promise.race( [
    foo(),                    // attempt `foo()`
    timeoutPromise( 3000 )    // give it 3 seconds
] )
.then(
    function(){
        // `foo(..)` fulfilled in time!
    },
    function(err){
        // either `foo()` rejected, or it just
        // didn't finish in time, so inspect
        // `err` to know which
    }
);

* Promises are defined so that they can only be resolved once. If for some reason the Promise creation code tries to call  resolve(..)  or  reject(..)  multiple times, or tries to call both, the Promise will accept only the first resolution, and will silently ignore any subsequent attempts.


* If you call  resolve(..)  or  reject(..)  with multiple parameters, all subsequent parameters beyond the first will be silently ignored.  If you want to pass along multiple values, you must wrap them in another single value that you pass, such as an  array  or

* If at any point in the creation of a Promise, or in the observation of its resolution, a JS exception error occurs, such as a  TypeError  or  ReferenceError, that exception will be caught, and it will force the Promise in question to become rejected.

## example
var p = new Promise( function(resolve,reject){
    foo.bar();    // `foo` is not defined, so error!
    resolve( 42 );    // never gets here :(
} );
p.then(
    function fulfilled(){
        // never gets here :(
    },
    function rejected(err){
        // `err` will be a `TypeError` exception object
        // from the `foo.bar()` line.
    }
);

* what happens if a Promise is fulfilled, but there's a JS exception error during the observation (in a  then(..)  registered callback)?
The  p.then(..)  call itself returns another promise, and it's that promise that will be rejected with the  TypeError  exception.

## example
var p = new Promise( function(resolve,reject){
    resolve( 42 );
} );
p.then(
    function fulfilled(msg){
        foo.bar();
        console.log( msg );    // never gets here :(
    },
    function rejected(err){
        // never gets here either :(
    }
);

* If you pass an immediate, non-Promise, non-thenable value to  Promise.resolve(..) , you get a promise that's fulfilled with that value.

var p = Promise.resolve(42);

* Promise.resolve(..)  will accept any thenable, and will unwrap it to its non-thenable value. But you get back from Promise.resolve(..)  a real, genuine Promise in its place, one that you can trust. If what you passed in is already a genuine Promise, you just get it right back, so there's no downside at all to filtering through  Promise.resolve(..)  to gain trust.

## example
we're calling a  foo(..)  utility and we're not sure we can trust its return value to be a well-behaving Promise, but we know it's at least a thenable:
// don't just do this:
foo( 42 )
.then( function(v){
    console.log( v );
} );
// instead, do this:
Promise.resolve( foo( 42 ) )
.then( function(v){
    console.log( v );
} );

* Every time you call  then(..)  on a Promise, it creates and returns a new Promise, which we can chain with.
* Whatever value you return from the  then(..)  call's fulfillment callback (the first parameter) is automatically set as the fulfillment of the chained Promise (from the first point).

* A thrown exception inside either the fulfillment or rejection handler of a  then(..) call causes the next (chained) promise to be immediately rejected with that exception.

* If you call  then(..)  on a promise, and you only pass a fulfillment handler to it, an assumed rejection handler is substituted:

var p = new Promise( function(resolve,reject){
    reject( "Oops" );
} );
var p2 = p.then(
    function fulfilled(){
        // never gets here
    }
    // assumed rejection handler, if omitted or
    // any other non-function value passed
    // function(err) {
    //     throw err;
    // }
);

* If a proper valid function is not passed as the fulfillment handler parameter to  then(..) , there's also a default handler substituted:
var p = Promise.resolve( 42 );
p.then(
    // assumed fulfillment handler, if omitted or
    // any other non-function value passed
    // function(v) {
    //     return v;
    // }
    null,
    function rejected(err){
        // never gets here
    }
);

* The  then(null,function(err){ .. })  pattern -- only handling rejections (if any) but letting fulfillments pass through -- has a shortcut in the API:  catch(function(err){ .. })

* If the fulfillment or rejection handler returns a Promise, it is unwrapped, so that whatever its resolution is will become the resolution of the chained Promise returned from the current  then(..) .

## example - namving conventions
var p = new Promise( function(X,Y){
    // X() for fulfillment
    // Y() for rejection
} );
// naming convention - X - resolve(), y - reject()

function fulfilled(msg) {
    console.log( msg );
}
function rejected(err) {
    console.error( err );
}
p.then(
    fulfilled,
    rejected
);

*  Promise.resolve(..)  creates a Promise that's resolved to the value given to it.
*   Promise.reject(..) creates the rejected promise for the reason value given to it.
* reject(..)  does not do the unwrapping that  resolve(..)  does. If you pass a
Promise/thenable value to  reject(..) , that untouched value will be set as the rejection reason. A subsequent rejection handler would receive the actual Promise/thenable you passed to  reject(..) , not its underlying immediate value.

## split callbacks style : then(fulfilled, rejected): one callback for success, other for failure

## error handling
var p = Promise.resolve( 42 );
p.then(
    function fulfilled(msg){
        // numbers don't have string functions,
        // so will throw an error
        console.log( msg.toLowerCase() );
    }
)
.catch( handleErrors );

as we didn't pass rejection/error handler to "then", errors simply propagate to next promise in the chain.








