%option noyywrap
%{
   #include "exp.tab.h"
%}

letter [A-Za-z]
letter_ ({letter}|"_")
digit [0-9]

%%
{letter_}({letter_}|{digit})* {return(ID);}
"=" {return(EQUAL);}
";" {return(SEMI);}
"-" {return(SUB);}
"+" {return(ADD);}
"*" {return(MUL);}
"/" {return(DIV);}
{digit}+ {return(NUM);}
%%
