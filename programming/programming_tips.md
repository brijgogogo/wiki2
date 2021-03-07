# programming tips

* Care about your craft
* Think! about your work
* Provide options, don't make lame excues
* Don't live with broken windows (bad designs, wrong decisions, poor code)
* Be a catalyst for change (stone soup vs frog soup)
* Remember the big picture
* Make quality a requirements issue
* Invest regularly in your knowledge portfolio
* Critically analyze what you hear and read
* It's both what you say and the way you say it
* DRY - don't repeat yourself
* Make it easy to reuse
* eliminate effects between unrelated things
* there are no final decisions
* use tracer bullets to find targets
* prototype to learn
* Program Close to the Problem domain
* Estimate to Avoid Surprises
* Iterate the Schedule with the Code


* Computer languages influence how you think about a problem

* Language can be used in two ways:
`Data languages` produce some form of data structure used by an application. These languages are often used to represent configuration information.

`Imperative language` is actually executed, and so can contain statements, control constructs, and the like.

* [[estimating]]
* use format which can be understood - text
* master your editor
* use source code control systems

* Debugging: Fix the Problem, Not the Blame
Embrace the fact that debugging is just problem solving, and attack it as such
In the technical arena, you want to concentrate on fixing the problem, not the blame.
It doesn't really matter whether the bug is your fault or someone else's. It is still your problem.
- Don't panic

Debugging strategies:
- visualize data
- tracing
- rubber ducking
- process of elimination
- don't assume it, prove it
- is the problem a result or symptom ?

* Learn a Text Manipulation Language - perl, python, sed, awk, shells, tcl
* write code that writes code
types of code generators:
- passive code generator: generate code once, use the result somewhere
- active code genrator: keep on generating, result is a throwaway

* You Can't Write Perfect Software

Correct program: one that does no more and no less than it claims to do

* Design with contracts - preconditions, postconditions, invariants
write shy code, defensive code
Liskov Substitution Principle: Subclasses must be usable through the base class interface without the need for the user to know the difference.

Assertive Programming

* Crash early
It's easy to fall into the "it can't happen" mentality
A dead program normally does a lot less damage than a crippled one.

* If It Can't Happen, Use Assertions to Ensure That It Won't
* Use Exceptions for Exceptional Problems

* Finish what you start
the routine that allocates the resource should also free it
1. Deallocate resources in the opposite order to that in which you allocate them. That way you won't orphan resources if one resource contains references to another.
2. When allocating the same set of resources in different places in your code, always allocate them in the same order. This will reduce the possibility of deadlock.

* Minimize coupling between modules
- Law of Demeter for functions: states that any method of an object should call only methods belonging to:
1. itself
2. any parameters that were passed in to the method
3. any objects it created
4. any directly help component objects


- Carefully and Consciously added complexity is cheaper and more manageable than accidental complexity.

## sources
The Pragmatic Programmer



