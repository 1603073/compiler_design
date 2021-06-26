%option noyywrap
%{  /* lex add1.l*/
    /*gcc lex.yy.c */
    #include "add1.tab.h"    
%}

digit [0-9]

%%
{digit}+ {printf("%s number\n", yytext);}
"+" {printf("%s ADD\n", yytext);}
"-" {printf("%s SUB\n", yytext);}
" "|\t|\n {}
%%
