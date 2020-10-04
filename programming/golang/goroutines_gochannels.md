# goroutines

Lighweight thread managed by Go runtime.
- Goroutines run in the same address space

go f(x, y, z)

It executes and immediately returns control to the next line in the program.

time.Sleep(100 * time.Millisecond)


= channels =
typed conduit through which you can send and receive values (among go routines)
channel operator: <-


ch := make(chan int)    // create channel which can send/receive integer types

ch <- v          // send v to channel ch
v := <-ch        // receive from ch


- by default, sends and receives block until the other side is ready

# Buffered Channel - buffer length
- Sends to a buffered channel block only when the buffer is full
- Receives block when the buffer is empty

ch := make(ch int, 100)


# closing channel
v, ok := <-ch      // ok is false if there are no more values to receive and channel is closed

for i:= range c        // receives values from channel until it is closed


close(c)           // close a channel

- sending on a closed channel will cause a panic


# select
- blocks until one of its cases can run

select {
  case c <- x:
      // code
  case <-quit:
    return
}


# sync.Mutex
mux sync.Mutex

mux.Lock()
mux.Unlock()


https://www.youtube.com/watch?v=f6kdp27TYZs
https://talks.golang.org/2013/advconc.slide
https://golang.org/doc/codewalk/sharemem/

# sync.RWMutex

var productMap = struct {
  sync.RWMutex
  m map[int]Product
}{m: make(map[int]Product)}

