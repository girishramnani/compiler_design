%{

	#include "y.tab.h"

%}

%%
"void" { return VOID; }
"main" { return MAIN; }
"for"	{ return FOR; }
[a-zA-Z0-9]+ { return VAL;}
[+-=\^&|]	{ return OP; } 
[(){},] { return yytext[0]; }
%%
