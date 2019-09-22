%{
#include<stdio.h>
%}
%%
int|double|char printf("\n%s is DataType",yytext);
[a-zA-Z_][a-zA-Z0-9]* printf("\n%s is Identifire",yytext);
[=|+|*|/] printf("\n%s is Operator",yytext);
%%
int yywrap(void){}
int main()
{
yylex();
return 0;
}