# windbg

At a minimum, we need publicly available symbols for the .NET framework
File→ Symbol Search Path
Provide a symbol folder (in my case C:\symbols) and the public server, i.e:
srv*C:\symbols*http://msdl.microsoft.com/download/symbols;

or:
.sympath srv*c:\symbolx*https://msdl.microsoft.com/downloads/symbols;
to set symbol paths

.sympath
to view symbol paths

.symfix
fix symbols

File → Open Crash Dump

.reload /f
lm
list loaded modules

In order to view any .Net objects in WinDbg, you have to load the SOS extension
.loadby sos clr

or .load C:\path\to\sos

run analysis
!analyze -v

!CLRStack -a

!dumpstackobjects

!DumpObject <address>
!do <address>

!DumpArray -length 5 -details <address>

.chain
list extentiosn dlls (like sos)

!Threads

!clrstack -a
to review the call stack that generated exception

!PrintExcetion
to find what error was thrown

!dumpheap -stat
view memory consumption by type
!dumpheal -type <type>
view memory consumption for all objects of type

!gcroot <address>
view which object are holding a reference to address

!finalizequeue

== sources ==
https://stackify.com/using-windbg-to-analyze-net-crash-dumps-async-crash/
https://stackoverflow.com/questions/7430769/what-to-do-with-the-version-of-sos-does-not-match-the-version-of-clr-you-are-de
https://blogs.msdn.microsoft.com/cclayton/2010/06/21/basic-analysis-of-a-managed-memory-dump-net/
http://geekswithblogs.net/.netonmymind/archive/2006/03/14/72262.aspx
https://blogs.msdn.microsoft.com/tess/2007/10/19/net-finalizer-memory-leak-debugging-with-sos-dll-in-visual-studio/

