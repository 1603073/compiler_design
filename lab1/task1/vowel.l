%option noyywrap
/*check a letter is vowel or consonant */
%{
    #include<stdio.h>    
%}

%%
"a"|"e"|"i"|"o"|"u"|"A"|"E"|"I"|"O"|"U" {printf("%s = vowel\n", yytext);}
. {printf("%s = consonant\n", yytext);}
%%

main(){
    yylex();
}
