%{

#include<stdio.h>

%}
%token VOID MAIN FOR VAL OP 

%%
START: VOID MAIN '(' ')' BLK
	;
BLK:'{' EXP '}'
	;
EXP: EXP L | L | EXP E | E 
	;
L: FOR '(' E ')' BLK
	; 
E: VAL
	| VAL OP E
	|
	;

%%
void main() { yyparse(); }

void yyerror(char *msg)
{
	printf("Error : %s \n",msg);
}

 
