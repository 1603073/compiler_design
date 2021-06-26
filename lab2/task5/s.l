%option noyywrap
%{
   #include "s.tab.h"
%}

letter [A-Za-z]
l [f-i]
letter_ ({letter}|"_")
digit [0-9]

%%
{l}+ {return(IF);}
{letter_}({letter_}|{digit})* {return(ID);}
"{" {return(LB);}
"}" {return(RB);}
"(" {return(LP);}
")" {return(RP);}
"==" {return(EQUAL);}
"=" {return(ASSIGN);}
";" {return(SEMI);}
"-" {return(SUB);}
"+" {return(ADD);}
""|\t|\n {}
{digit}+ {return(NUM);}
%%
