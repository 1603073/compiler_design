/* check the input is identifier or not */
%option noyywrap
%{
    #include<stdio.h>
%}

letter [A-Za-z]
digit [0-9]
letter_ ({letter}|"_")

%%
{letter_}({letter_}|{digit})* {printf("%s = identifier\n",yytext);}
{digit}+ {printf("%s = number\n", yytext);}
. {printf("%s = unknown\n",yytext);}
%%

main(){
    yylex();
}
