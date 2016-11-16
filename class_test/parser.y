%{

	#include "y.tab.h"

%}

%token NAME

%%
statement: NAME statement
    |   NAME { }
    | ;

%%
