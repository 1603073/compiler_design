%{
    #include<stdio.h>
    void yyerror(char *s);
    int yylex();
%}

%token IF LP ID EQUAL ASSIGN NUM RP LB RB SEMI ADD SUB
%start s

%%
s: IF LP exp RP LB id_declare RB
    ;

exp: exp EQUAL NUM
    |exp SUB NUM
    |exp ADD NUM
    |NUM
    |ID
    ;

id_declare: ID ASSIGN exp SEMI
    ; 

 
    
%%

int main(){
    yyparse();
    printf("parsing finished");
}

void yyerror(char *s){
    fprintf(stderr, "error = %s\n", s);
}
