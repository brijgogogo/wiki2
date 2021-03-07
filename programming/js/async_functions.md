# async functions
Added in ES8 (2017)


- promise is handled using await keyword
- async function always returns Promise
- await keyword only works inside async function.

  async function foo() {
    const result = await promiseReturningFunction();
    console.log(result);
  }

