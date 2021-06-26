%{
    #include<stdio.h>
    void yyerror(char *s);
    int yylex();
%}

%token NUM ADD SUB 
%start cal
%left ADD SUB
%%
cal: exp{$$ = $1;printf("%d\n",$$);}
    ;
exp: exp SUB NUM {$$ = $1-$3;}
    |exp ADD NUM {$$ = $1+$3;}
    |NUM{$$=$1;}
    ;
                
%%

main(){
    yyparse();
    printf("parsing finished");
}

void yyerror(char *s){
    fprintf(stderr, "error = %s", s);
}
