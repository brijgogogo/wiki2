# pragma_directives

Pragma directives are implementation-specific directives that give extra information to the compiler.

it’s just #pragma as the first nonwhitespace part of a line followed by the text of the pragma directive.

example: below disables warning "variable is assigned but never used"
#pragma warning disable CS0219
int variable = CallSomeMethod();
#pragma warning restore CS0219

