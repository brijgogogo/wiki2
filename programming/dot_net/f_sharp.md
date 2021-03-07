# F#
F# is a functional programming language. Functional programming treats programs as mathematical expressions. It focuses on functions and constants that don't change, rather than variables and states. F# is a Microsoft programming language for concise and declarative syntax. Let's begin with a brief history of how this language came into
/home/vik/Documents/_data/_books/Christian Nagel/Professional C# 7 and .NET Core 2.0 (14858)

type inference
F# types: tuple, record, union
list, seq
List.fold, List.map, List.iter, List.sum, List.zip
Seq.filter, Seq.groupBy
String.length
pipe |>
composition >>
composition: build larger systems from smaller ones
statement oriented vs expression oriented

* product types
type IntAndBool = {intPart: int; boolPart: bool}
let x = {intPart=1; boolPart=false}

* sum types:
type IntOrBool =
	| IntChoice of int
	| BoolChoice true
let y = IntChoice 42
let z = BoolChoice true

* pattern matching
match booleanExpression without
	| true -> // true branch
	| false -> // false branch

* loops are generally done using recursion

* record types
type Person = {FirstName:string; LastName:string; Dob:DateTime}
type Coord = {Lat:float; Long:float}

* union (choice) types
type TimePeriod = Hour | Day | Week | Year
type Temperature = C of int | F of int
type Appointment = OneTIme of DateTime
					| Recurring of DateTime list

Unit of Work Pattern
The Unit of Work pattern is used to group one or more operations (usually database operations) into a single transaction or “unit of work”, so that all operations either pass or fail as one.

public interface IUnitOfWork
{
    void BeginTransaction();
    void Commit();
    void Rollback();
}

Repository Pattern
The Repository pattern is used to manage CRUD operations through an abstract interface that exposes domain entities and hides the implementation details of database access code.

public interface IRepository<T> where T : IEntity
{
    IQueryable<T> GetAll();
    T GetById(int id);
    void Create(T entity);
    void Update(T entity);
    void Delete(int id);
}


## sources
https://fsharpforfunandprofit.com/posts/fsharp-in-60-seconds/
https://fsharpforfunandprofit.com/posts/key-concepts/
https://fsharpforfunandprofit.com/posts/discriminated-unions/
https://fsharpforfunandprofit.com/posts/records/
