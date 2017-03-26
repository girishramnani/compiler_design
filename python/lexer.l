%{

	#include "y.tab.h"

%}

%%
"if" {return IF; }
"else" {return ELSE; }
"elif" {return ELIF; }
"for"	{ return FOR; }
"while" { return WHILE; }
[\t]    { return INDENT; }
[a-zA-Z0-9]+ { return VAL;}
[+-=\^&|]	{ return OP; }
[(){},] { return yytext[0]; }
[0-9]+ {return NUMBER; }
"[0-9a-zA-Z]" {return STRING; }
[0-9]?[.][0-9]+ {return FLOAT; }
%%
