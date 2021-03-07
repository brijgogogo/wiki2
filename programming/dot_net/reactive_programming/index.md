# reactive programming in .net

We process data in real time as it happens.
For example, we have a Market class which has the prices of securities, which keep on changing. We can subscribe to these changes and process them in real time.
We can do this using custom events, INotifyPropertyChanged, Observer pattern (using System.IObserver<T> and System.IObservable<T>)

* Disadvantages_of_events

## Reactive Extensions
Reactive Extensions for .NET (Rx)
- elegant, familiar, declarative style, less code

Essentially Rx is built upon the foundations of the Observer pattern.


You should consider using Rx if you have an existing IEnumerable<T> that is attempting to model data in motion. While IEnumerable<T> can model data in motion (by using lazy evaluation like yield return), it probably won't scale. Iterating over an IEnumerable<T> will consume/block a thread. You should either favor the non-blocking nature of Rx via either IObservable<T> or consider the async/await features.

.NET Provides System.Reactive libraries (in Nuget) to carry out reactive programming using IObserver<T> and IObservable<T>

Push model: A producer pushes items onto the sequence and consumers passively receive these items and act on them. IEnumerable is Pull/Synchronous. IObservable is Push/Asynchronous.

In between the producer and the consumer we can create multiple stages where we apply operations such as transformations, filters, projections and the like. Each operation is applied on an IObservable<T> and returns an IObservable<T>. We can apply LINQ like methods like Select, Where, GroupBy, Any, All, Distinct, Skip, Take, the list goes on.

Observable: stream of values which can be observerd
Observer: client code which actually observes the Observables


* basic_interfaces (IObserver, IObservable)
* Observable_Helpers
* Subject
* hot_and_cold_observables
* rx_concurrency


* Example of Observable to genrate sequences
var obs = Observable.Empty<int>(); // generates OnComplete

var obs = Observable.Return<int>(2); // behaves like ReplaySubject (calls OnNext for 2 and then OnComplete)

var obs = Observable.Never<int>(); // does nothing

var obs = Observable.Throw<int>(new Exception("oops")); // generates OnError

* Example of Observable as non-blocking sequences
private static IObservable<string> Blocking() {
 var subj = new ReplaySubject<string>();
 subj.OnNext("foo", "bar");
 subj.OnCompleted();
 Thread.Seep(3000);
 return subj;
}

private static IObservable<string> NonBlocking() {
 return Observable.Create<string>(observer =>
 {
  observer.OnNext("foo", "bar");
  observer.OnCompleted();
  Thread.Sleep(3000);
  return Disposable.Empty;
 });
}


* Example of creating general extension method
public static IDisposable Inspect<T>(this IObservable<T> self, string name) {
  return self.Subscribe(
    x => Console.WriteLine($"{name} has generated value {x}"),
    ex => Console.WriteLine($"{name} has generatd exception {ex.Message}"),
    () => Console.WriteLine($"{name} has completed)}")
  );
}


* Example of Disposable
static void Main() {
  var obs = Observable.Create<string>(o =>
  {
    var timer = new Timer(1000);
    timer.Elapsed += (sender, e) => o.OnNext($"tick {e.SignalTime}");
    timer.Elapsed += TimerOnElapsed;
    timer.Start();
    return Disposable.Empty; // timer will not get disposed, even if we dispose subscription
    return () => {
      timer.Elapsed -= TimerOnElapsed;
      timer.Dispose();
    };
  });

  var sub = obs.Inspect("timer"); //create helper method Inspect which will do console.writeline on OnNext, OnError, OnComplete
  Console.ReadLine();

  sub.Dispose();
  Console.Readine();
}

private static void TimerOnElapsed(object s, ElapsedEventArgs args) {
  Console.WriteLine($"tock {args.SignalTime}");
}


* Example of Observable.Range, Observable.Generate, Observable.Interval
var tenToTwenty = Observable.Range(10, 10, 12);
tenToTwenty.Inspect("range");

var generated = Observable.Generate(
      1, //starting value
      value => value < 100, //condition till to generate value
      value => value * value + 1, // next value
      value => $"[{value}]" // outputs value
    );
generated.Inspect("generated");

var interval = Observable.Interval(TimeSpan.FromMilliseconds(500)); // produces value after every interval
using(interval.Inspect("interval")) {
  Console.ReadKey();
}

var timer = Observable.Timer(TimeSpan.FromSeconds(2)); //does a single interval
var timer = Observable.Timer(TimeSpan.FromSeconds(2),
TimeSpan.FromSeconds(2)); //does interval, with custom initial delay
timer.Inspect("timer");


* Example of Observable.Start : executes in separate thread
var start = Observable.Start(() =>
    {
      WriteLine("starting")
      for(int i = 0; i < 10; i++) {
        Thread.Sleep(200);
        Write(".");
      }
    });


* Example of Observable.FromEvenPattern : working using Observable with events
var market = new Market();
var priceChanges = Observable.FromEventPattern<float>(
      h => market.PriceChanged += h,
      h => market.PriceChanged -= h
    );

//priceChanges.Inspect("price changes");
priceChanges.Subscribe(
  x => Console.WriteLine($"{x.EventArgs}");
);


* Observables with Task (TPL)
var t = Task.Factory.StartNew(() => "Test");
var source = t.ToObservable();
source.Inspect("task");

* Observables with IEnumerables
var items = new List<int> { 1, 2, 3 };
var source = items.ToObservable();
source.Inspect("observable");

* Linq with Observable (select, filtering, etc)
Observable.Range(0, 100)
  .Where(i => i % 9 == 0)
  .Select(x => x + 1)
  .Distinct()
  .Inspect("where");

new List<int> { 1, 1, 2, 2, 3, 3, 2, 2 }
  .ToObservable()
  .DistinctUntilChanged()  // only looks at previous value
  .IgnoreElements()  // filters out every element
  .Inspect("dit");

Observable.Range(1, 10).
  .Skip(3)
  .Take(4)
  .Inspect("skip/take");

var values = Observable.Range(-10, 20)
values.SkipWhile(x => x < 0)
  .TakeWhile(x => x < 6)
  .Inspect("while");

values.SkipLast(5).Inspect("inspect last");

* SkipUntil
var stockPrices = new Subject<float>();
var optionPrices = new Subjec<float>();
stockPrices.SkipUntil(optionPrices) // until we get values from optionPrices
  .Inspect("skipuntil");

* Conditional invocation
var subject = new Subject<int>();
subject.Any(x => x > 1).Inspect("any"); // gets called on OnError or OnCompleted or condition satisfaction
subject.Oncompleted();


var values = new List<int> { 1, 2, 3, 4, 5 };
values.ToObservable()
  .All(x => x > 0)
  .Inspect("all");

var subj = new Subject<string>();
subj.Contains("foo").Inspect("contains");

var subj = new Subject<float>();
subj.DefaultIfEmpty(0.99f)
  .Inspect("default");
subj.OnComplete();


var numbers = Observable.Range(1, 10);
numbers.ElementAt(5);
numbers.Inspect("elementsAt");


var seq1 = new Subject<int>();
var seq2 = new Subject<int>();
seq1.SequenceEqual(seq2).
  .Inspect("equal");


* Example of Transformations
var subj = new Subject<object>();
subj.OfType<float>().Inspect("ofType");
subj.Cast<float>().Inspect("OfType");

var seq = Observable.Interval(TimeSpan.FormSeconds(1));
seq.TimeStamp().Inspect("ts");
seq.TimeInterval().Inspect("ti");

var seq = Obsevable.Range(0, 4);
seq.Materialize().Inspect("materialize"); // gives info of what happened (notificaiton). Can be used in debugging

seq.Materialize().Dematerialize().Inspect("material");


Observable.Range(1, 3, Scheduler.Immediate)
  .SelectMany(x => Observable.Range(1, x, Scheduler.Immediate))
  .Inspect("selectMany");


* Sequence Aggregation : collapsing a sequence to a single value
var values = Observable.Range(1, 5);
values.Inpect("value");
values.Count().Inspect("count");

var intSubject = new Subject<int>();
intSubj.Inspect("intSubj");
intSubj.Min().Inspect("min");
intSubj.Max().Inspect("max");
intSubj.Average().Inspect("avg");
intSubj.OnNext(1);
intSubj.OnNext(2);
intSubj.OnNext(3);
intSubj.OnComplete();


var replay = new ReplaySubject<int>();
replay.OnNext(-1);
replay.OnNext(2);
replay.OnCompleted();

replay.FirstAsync(x => x > 0).Inspect("firstAsync"); //throws exception if no matching value found
replay.FirstOrDefaultAsync(x => x > 0).Inspect("firstAsync");

replay.SingleAsync().Inspect("single"); // works if only one value
replay.SingleOrDefaultAsync().Inspect("singleOrDefAsync");

replay.Sum().Inspect("sum");


var subj = new Subject<double>();
int power = 1;
subj.Aggregate(0.0, (p, c) => p + Math.Pow(c, power++)).Inspect("poly");
//1, 2, 4
//1^1 + 2^2, + 4^3


var subj = new Subject<double>();
subj.Scan(0.0, (p, c) => p+c).Inspect("scan");
subj.OnNext(1, 2, 3);
// 0
// 1 3 6


* Exception handling
var subj = new Subject<int>();
var fallback  = Obsevable.Range(1, 3);
//var fallback  = Observable.Empty<int>();
subj
  .Catch(fallback) // if main subj gives error, we switch to fallback sequence
  .Catch<int, ArgumentException>( // filter exceptions
    ex => Observable.Return(111);
  )
  .Inspect("subj");
subj.OnNext(32);
subj.OnError(new ArgumentExcedption("arg"));
subj.OnError(new Exception("oops"));


//Finally()


* On Error next sequence
var seq1 = new Subject<char>();
var seq2 = new Subject<char>();

seq1.OnErrorResumeNext(seq2).Inspect("onErrorResumeNext");
//continues with next sequence on error or complete

seq1.OnNext('a', 'b', 'c')
  .OnError(new Exception())
  .OnCompleted();
seq2.OnNext('d', 'e', 'f');


* Retrying
SucceedAfter(3).Retry(4).Inspec("retry");
SucceedAfter(5).Retry(4).Inspec("retry");

private static IObservable<int> SucceedAfter(int attempts) {
  int count = 0;
  return Observable.Create<int>(o => {
    Console.WriteLine((count > 0 ? "Ret" : "T") + "rying to work");

    if(count++ < attempts)
    {
      Console.WriteLine("failed");
      o.OnError(new Exception());
      } else {
        Console.WriteLine("Succeeded");
        o.OnNext(count);
        o.OnCompleted();
      }

      return Disposable.Empty;
  });
}



* Combining sequences
var mechanical = new BehaviorSubject<bool>(true);
var elecrical = new BehaviorSubject<bool>(true);
var electronic = new BehaviorSubject<bool>(true);

mechanical.Inspect("mechanical");
electrical.Inspect("electrical");
electronic.Inspect("electronic");

Observable.CombineLatest(mechanical, electrical, electronic)
  .Select(values => values.All(x => x))
  .Inspect("Is the system ok?");
// takes latest values of all sequences

mechanical.OnNext(false);


* Combining sequences
var digits = Observable.Range(0, 9);
var letters = Observable.Range(0, 10)
  .Select(x => (char) ('A' + x));

letters.Zip(digits, (letter, digit) =>
{
  return $"{letter}{digit}"
}).Inspect("zip");
// zip pairs elements of both sequences


var punctuation = "!@#$%^&*()".ToCharArray()
  .ToObservable();

Observable.When(
  digits.And(letters).And(punctuation)
    .Then(digit, letter, symbol) => $"{digit}{letter}{symbol}")
).Inspect("and-then-when");
// use And to combine more than 2 sequences

* Combining sequences
var s1 = Observable.Range(1, 3);
var s2 = Observable.Range(4, 3);
s1.Concat(s2).Inspect("concat");
s1.Repeat(3).Inspect("repeat");
s1.StartWith(2, 1, 0).Inspect("start with");// prepend values

var seq1 = new Subject<int>();
var seq2 = new Subject<int>();
var seq3 = new Subject<int>();
seq1.Amb(seq2).Amb(seq3).Inspect("amb"); // gets values from first value publisher

seq1.OnNext(1);
seq1.OnNext(2);
seq1.OnNext(3);

seq2.OnNext(10);
seq2.OnNext(20);
seq3.OnNext(30);

seq3.OnNext(100);
seq3.OnNext(200);
seq3.OnNext(300);


var foo = new Subject<long>();
var bar = new Subject<long>();
var baz = Observable.Interval(TimeSpan.FromSeconds(0.5)).Take(5);

foo.Merge(bar).Merge(baz).Inspect("merge");
foo.OnNext(100);
Thread.Sleep(1000);
bar.OnNext(10);
Thread.Sleep(1000);
foo.OnNext(1000);
Thread.Sleep(1000);


* Example of batches
Observable.Range(1, 100)
  //.Buffer(5) // sends 5 values at a time
  .Buffer(5, 3) // second argument says how many items to throw from previous batch
  //.Buffer(5, 6) // skips one value in each batch
  .Subscribe(x => WriteLine(string.Join(",", x)));

* Example of Delay
var source = Observable.Interval(TimeSpan.FromSeconds(1))
  .Take(3);
var delay = source.Delay(TimeSpan.FromSeconds(2)); // delays value by a time
source.TimeStamp().Inspect("source");
delay.TimeStamp().Inspect("delay");

* Example of Sample
var samples = Observable.Interval(TimeSpan.FromSeconds(0.5))
  .Take(20)
  .Sample(TimeSpan.FromSeoconds(1.72));
samples.Inspect("sample"); // sample values at a particular interval
samples.ToTask().Wait();

* Exmaple of throttle
var subj = new Subject<string>();

//subj.Throttle(TimeSpan.FromSecond(1)).Inspect("subj"); // gives all values after a time
//subj.Timeout(TimeSpan.FromSeconds(3)).Inspect("subj"); // throws exception if no value within a time
subj.Timeout(TimeSpan.FromSeconds(3), Observable.Emtpy).Inspect("subj"); // returns another sequences if no value within a time
string input = string.Empty;
ConsoleKeyInfo c;
while((c = Console.ReadKey()).Key != Console.Escape)
{
  if(char.IsLetterOrDigit(c.KeyChar))
  {
    input += c.KeyChar;
    subj.OnNext(input);
  }
}


* Example of EventBroker
public class Actor
{
  protected EventBroker broker;

  public Actor(EventBroker broker)
  {
    this.broker = broker ?? throw new ArgumentNullException(paramName: nameof(broker));
  }
}

public class FootballPlayer : Actor
{
  public string Name {get;set;}
  public int GoalScored {get;set;} = 0;

  public FootballPlayer(EventBroker broker, string name) : base(broker)
  {
    this.Name = name;
    broker.OfType<PlayerScoredEvent>()
      .Where(ps => !ps.Name.Equals(name))
      .Subscribe(ps => Console.WriteLine($"{name}: nice done"));

    broker.OfTYpe<PlayerSendOffEvent>()
      .Where(ps => !ps.Name.Equals(name))
      .Subscribe(ps => Console.WriteLine($"{ps.Name} see you in the locker"));
  }

  public void Score()
  {
    GoalScored++;
    broker.Publish(new PlayerScoredEvent{Name = Name, GoalScored = GoalScored});
  }

  public void AssaultRefree()
  {
    broker.Publish(new PlayerSentOffEvent{Name=Name, Reason = "violence"});
  }
}

public class FootballCoach : Actor
{
  public FootballCoach(EventBroker broker) : base(broker)
  {
    broker.OfType<PlayerScoredEvent>()
      .Subscribe(pe =>
      {
        if(pe.GoalScored < 3)
        {
          Console.WriteLine($"Coash: well done {pe.Name}!");
        }
      });

      broker.OfType<PlayerSentOffEvent>()
      .Subscribe(pe =>
      {
        if(pe.Reason == "violence")
        {
          Console.WriteLine($"Coash: how could you, {pe.Name}");
        }
      });
  }

}

public class PlayerEvent
{
  public string Name {get;set;}
}

public class PlayerScoredEvent : PlayerEvent
{
 public int GoalsScored {get;set;}
}

public class PlayerSentOffEvent : PlayerEvent
{
  public string Reason {get;set;}
}

public class EventBroker : IObservable<PlayerEvent>
{
  Subject<PlayerEvent> subscriptions = new Subject<PlayerEvent>();

  public IDisposable Subscribe(IObservable<PlayerEvent> observer)
  {
    subscriptions.Subscribe(observer);
  }

  public void Publish(PlayerEvent pe)
  {
    subscriptions.OnNext(pe);
  }
}

static void Main()
{
  var cb = new ContainerBuilder(); // autofac
  cb.RegisterType<EventBroker>().SingleInstance();
  cb.RegisterType<FootballCoach>();
  cb.Register((c,p) => new FootballPlayer(c.Resolve<EventBroker>(),
  p.Named<string>("name")));

  using(var c = cb.Build())
  {
    var coach = c.Resolve<FootballCoach>();
    var player1 = c.Resolve<FootballPlayer>(new NamedParameter("name", "John"));
    var player2 = c.Resolve<FootballPlayer>(new NamedParameter("name", "Chris"));

    player1.Score();
    player1.Score();
    player1.Score();
    player1.AssaultRefree();
    player2.Score();
  }
}


## sources
https://jack-vanlightly.com/blog/2018/4/19/processing-pipelines-series-reactive-extensions-rxnet
http://introtorx.com/





