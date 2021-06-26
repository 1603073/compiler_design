%{
    #include<stdio.h>
    void yyerror(char *s);
    int yylex();    
%}

%token NUM ID EQUAL SEMI SUB ADD MUL DIV 
%start s

%%
s: ID EQUAL n SEMI
    ;
n: NUM
    |SUB NUM
    ;
%%

int main(){
    yyparse();
    printf("parsing finished\n");
}
void yyerror(char *s){
    fprintf(stderr,"error = %s\n",s);
}
