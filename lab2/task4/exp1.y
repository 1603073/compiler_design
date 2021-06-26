%{
    #include<stdio.h>
    void yyerror(char *s);
    int yylex();    
%}

%token NUM ID EQUAL SEMI SUB ADD
%start s

%%
s: ID EQUAL exp SEMI
    ;
exp: exp ADD NUM
    |exp SUB NUM
    |NUM
    |ID
    ;
%%

int main(){
    yyparse();
    printf("parsing finished\n");
}
void yyerror(char *s){
    fprintf(stderr,"error = %s\n",s);
}
