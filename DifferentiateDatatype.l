%{
#include<stdio.h>
%}
%%
[i][n][t] printf("DataType");
[a-zA-Z_] printf("Identifire");
%%
int yywrap(void){}
int main()
{
yylex();
return 0;
}