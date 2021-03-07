# event emitters
on emit of event, subscribers will fire
Helps in decoupling functionality.

## drawbacks
- event listener functions always ignore their return values
- events can't be passed as a parameter or manipulated as sequence
- can miss events if we start listening too late

