// Adapted from http://dinosaur.compilertools.net/yacc/ Appendix A
%{
#  include  <stdio.h>
#  include  <ctype.h>

int  base;
%}

%start  list

%token  DIGIT

%left  '+'  '-'
%left  '*'
%left  UMINUS      /*  supplies  precedence  for  unary  minus  */

%%      /*  beginning  of  rules  section  */

list :    /*  empty  */
     |    list  expr  '\n'
               {    printf( "%d\n", $1 );  }
     |    list  error  '\n'
               {    yyerrok;  }
     ;

expr :    '('  expr  ')'
               {    $$  =  $2;  }
     |    expr  '+'  expr
               {    $$  =  $1  +  $3;  }
     |    expr  '-'  expr
               {    $$  =  $1  -  $3;  }
     |    expr  '*'  expr
               {    $$  =  $1  *  $3;  }
     |    '-'  expr        %prec  UMINUS
               {    $$  =  -  $2;  }
     |    number
     ;

number    :    DIGIT
               {    $$ = $1;    base  =  ($1==0)  ?  8  :  10;  }
     |    number  DIGIT
               {    $$  =  base * $1  +  $2;  }
     ;

%%      /*  start  of  programs  */

yylex() {      /*  lexical  analysis  routine  */
              /*  return  DIGIT  for  a  digit,  yylval = 0  through  9  */
              /*  all  other  characters  are  returned  immediately  */

     int  c;

     while(  (c=getchar())  ==  ' '  )  {/*  skip  blanks  */  }

     /*  c  is  now  nonblank  */

     if(  isdigit(  c  )  )  {
          yylval  =  c  -  '0';
          return(  DIGIT  );
          }
     return(  c  );
     }
