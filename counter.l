%{
#include<stdio.h>
int counter1=0;
int counter2=0;
int counter3=0;
%}
%%
int|double|char {printf("\n%s is DataType",yytext);} {counter1++;}
[a-zA-Z_][a-zA-Z0-9]* {printf("\n%s is Identifire",yytext);} {counter2++;}
[=|+|*|/] {printf("\n%s is Operator",yytext);} {counter3++;}
%%
int yywrap(void){}
int main()
{
yylex();
printf("\nDatatype is: %d",counter1);
printf("\nidentifire is: %d",counter2);
printf("\nOperator is: %d",counter3);
return 0;
}