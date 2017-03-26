%{

#include<stdio.h>

%}
%token VOID MAIN FOR VAL OP 

%%
START: VOID MAIN '(' ')' BLK
	| error { yyerrok ; }
	;
BLK:'{' EXP '}'
	| error { yyerrok ; }
	;
EXP: EXP L | L | EXP E | E 
	| error { yyerrok ; }
	;
L: FOR '(' E ')' BLK
	| error { yyerrok ; }
	; 
E: VAL
	| VAL OP E
	|
	| error { yyerrok ; }
	;

%%
void main() { yyparse(); }

void yyerror(char *msg)
{
	printf("Error : %s \n",msg);
}

 
