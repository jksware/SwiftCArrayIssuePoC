Swift compiler interop errors PoC when accessing a C array
==========================================================

The following project contains two Proof of Concepts of interop errors that
occur whenever Swift code tries to gain access to C arrays declared in C or 
C++ code.

Issue #1
--------
The first issue is a PoC of an interop error that occurs whenever Swift code
tries to access an extern C array.

Issue #2
--------
Another issue is that a Flexible Array Member (FAM) of a struct cannot be 
accessed from Swift. The field is thereby reported as missing by the Swift
Compiler.

A FAM is c99 feature representing an incomplete array declaration in C (and 
some non-standard C++ implementations), or an array declaration with no 
specified size in the last position of a struct.

Generally speaking, FAMs are used to support variable length arrays in structs
(or in C++'s case, also classes), or those whose length is unknown at compile 
time or whose implementations' length may vary (even if known at compile time 
for each separate implementation).

Workarounds
-----------
For both issues, if the C code is modifiable, a workaround is to access a 
pointer to the C array or have a function retrieve or set a particular value.