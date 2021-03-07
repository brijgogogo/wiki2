# event loop
mechanism that handles executing multiple cunks of your program over time

A JavaScript program is (practically) always broken up into two or more chunks, where the first chunk runs now and the next chunk runs later, in response to an event.

Whenever there are events to run, the event loop runs until the queue is empty. Each iteration of the event loop is a "tick."

User interaction, IO, and timers enqueue events on the event queue.

At any given moment, only one event can be processed from the queue at a time. While an event is executing, it can directly or indirectly cause one or more subsequent events.

browser: setTimeout(function, milliseconds)
node.js: process.nextTick(..)

- async - some code executes now, and some later
- parallel - things being able to occur simultaneously
- common tools for parallel computing - processes and threads

Event loop - breaks its work into tasks and executes them in serial

Parallelism and serialism can coexist in the form of cooperating event loops in separate threads.


## low level operations (load, store, add, etc) - atomicity
In a single-threaded environment, it really doesn't matter that the items in the thread queue are low-level operations, because nothing can interrupt the thread. But if you have a parallel system, where two different threads are operating in the same program, you could very likely have unpredictable behavior.


## run to completion
Because of JavaScript's single-threading, the code inside of  foo()  (and  bar() ) is atomic, which means that once  foo() starts running, the entirety of its code will finish before any of the code in  bar()  can run, or vice versa.

## concurrency
Concurrency is when two or more chains of events interleave over time, such that from a high-level perspective, they appear to be running simultaneously (even though at any given moment only one event is being processed).


## Jobs (Job API)
Jobs happen at the end of the current event loop tick.
- event loop queue vs job queue
the event loop queue is like an amusement park ride, where once you finish the ride, you have to go to the back of the line to ride again. But the Job queue is like finishing the ride, but then cutting in line and getting right back on.


## source
YDKJS - Async & Performance

