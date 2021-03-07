# callback functions
A callback is a function (A) passed as a parameter to another function (B) that performs an asynchronous operation. When (B) is done, it calls back (A) with the results of the operation.

function B(callback) {
  // async operation
  callback('done');
}

function A(msg) {
  console.log(msg);
}

B(A);

## drawbacks
- callback hell - lots of nested callbacks. Difficult to maintain and debug.
- callbacks can run more than once
- callbacks break the traditional try/catch mechanism. Need to pass errors around.
- combiling interdependent results of multiple async operations is difficult
-

## variations
- split-callback design: ajax("url", successFunction, failureFunction)
- error-first style (or Node style):
  ajax("url", function response(err,data){
    if(err) {  }
    else { }
  })

## error handling - error-first callback style
function foo(cb) {
    setTimeout( function(){
        try {
            var x = baz.bar();
            cb( null, x ); // success!
        }
        catch (err) {
            cb( err );
        }
    }, 100 );
}
foo( function(err,val){
    if (err) {
        console.error( err ); // bummer :(
    }
    else {
        console.log( val );
    }
} );


