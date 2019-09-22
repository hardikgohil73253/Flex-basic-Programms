%{
#include<stdio.h>
#include<conio.h>
%}
%%
[a|e|i|o|u|A|E|I|O|U] {printf("\n%s is vowel",yytext);}
[a-zA-z] {printf("\n%s is Constant",yytext);}
%%
int yywrap(void){}
int main()
{
yylex();
return 0;
}