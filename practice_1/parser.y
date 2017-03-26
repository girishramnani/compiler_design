%{

#include<stdio.h>

%}

%token NUMBER


%%

ROOT: statement { printf("here - 1\n");}
    ;

statement : statement '+' NUMBER { printf("here 2\n"); }
          | statement '-' NUMBER
          | statement '*' NUMBER
          | statement '/' NUMBER
          | NUMBER
          ;

%%
