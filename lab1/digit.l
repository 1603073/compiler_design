/* check a given input is digit or character */
%option noyywrap
%{
#include<stdio.h>    
%}

%%
[A-Za-z] {printf("%s = character\n", yytext);}
[0-9] {printf("%s = digit\n",yytext);}
. {printf("%s = unknown\n", yytext);}
%%

main(){
    yylex();
}
