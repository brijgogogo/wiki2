# Object Layout
* Heap Objects (reference types) have two header fields.
%% On 32-bit system, each field is 4 bytes long and on 64-bit sytem each field
%% is 8 bytes long.
%%
%% Reference Type instance:
%%    Object Header Word
%%    Method Table Pointer
%%    First Object Field
%%    Second Object Field


* Stack objects (value types) don't have headers

%%  struct/class Point2D
%% {
%%  public int X;
%%  public int Y;
%% }
%% e.g. 10 million objects, need 80 million bytes for references, additionally
%% each object will need 16 bytes for header field (64 bit system),
%% 8 bytes for the object field
%% so 10 million objects = 320,000,000 bytes
%%
%% to store 10 million structs, need 80,000,000 bytes

* Use value types in high-performance scenarios
%% tight loops, large collections
%% implement value types correctly - Equals, IEquatable<T>, GetHashCode

:.net:

