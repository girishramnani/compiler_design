%{

#include<stdio.h>

%}
%token INDENT

%%
START:  stmt | stmt START | 

stmt: simple_statment | compound_stmt

%%
void main() { yyparse(); }

void yyerror(char *msg)
{
	printf("Error : %s \n",msg);
}
