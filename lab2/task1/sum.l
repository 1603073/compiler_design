%option noyywrap
%{
    #include "sum.tab.h"
%}

digit [0-9]

%%
{digit}+ {yylval = atoi(yytext);return(NUM);}
"+" {return(ADD);}
"-" {return(SUB);}
""|\t|\n {}
%%
