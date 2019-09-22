%{
#include<stdio.h>
#include<conio.h>
int flag;
%}
%%
[a-z][a-zA-Z0-9]*@[a-z]*".com" {flag=1;}
%%
int yywrap(void){}
int main()
{
yylex();
if(flag==1)
{
  printf("\nValid Email ID.");
}
else
{
  printf("\nInvalid Email ID.");
}
return 0;
}