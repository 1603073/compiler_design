%{
    #include<stdio.h>
    void yyerror(char *s);
    int yylex();
    /* yacc -d add1.y */
    /* gcc lex.yy.c add1.tab.h */
%}

%token number op EOL
%start s

%%
s: number op number EOL 
%%

main(){
    yyparse();
    printf("parsing finished\n");
}

void yyerror(char *s){
    fprintf(stderr, "error = %s\n", s);
}
