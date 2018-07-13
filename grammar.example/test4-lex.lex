// Taken from http://www.cs.man.ac.uk/~pjj/cs212/ex5_hint.html
%%
[A-Z]+                          {if(trace)ECHO; return school;}
[A-Z][0-9]                      {if(trace)ECHO; return group;}
"__"                            {if(trace)ECHO; return group;}
[A-Z][A-Z][0-9][0-9][0-9][0-9]  {if(trace)ECHO; return module;}
[A-Z][A-Z][0-9][0-9][0-9]       {if(trace)ECHO; return module;}
[A-Z][a-z'][-A-Za-z, ]*         {if(trace)ECHO; return name;}
[ \t\n]                         {if(trace)ECHO;}
.                               {ECHO; yyerror("unexpected character");}
