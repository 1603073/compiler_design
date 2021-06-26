/*check to match a word */
%option noyywrap

%{
    #include<stdio.h>
%}

letter [A-Za-z]
digit [0-9]

%%
{letter}+ {printf("%s = word\n", yytext);}
{digit}+ {printf("%s = number\n", yytext);}
. {printf("%s = unknown\n", yytext);}
%%

main(){
    yylex();
}
