// Taken from http://www.cs.man.ac.uk/~pjj/cs212/ex5_hint.html
%start file
%token school group module name
%%
file	: student
		| file student
		;
student	: school group name modules
		;
modules	:
		| modules module
		;
%%
int trace=0;
