%option noyywrap

%{
    #include<stdio.h>
%}

digit [0-9]

%%
{digit}+ {printf("%s = number\n", yytext);}
("+"|"-"|"*"|"/")* {printf("%s op\n", yytext);}
(" "|\t|\n) {}
. {printf("%s = unknown\n",yytext);}
%%

main(){
    yylex();
}
