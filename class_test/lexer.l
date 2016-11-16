%{

#include<string.h>
#include "y.tab.h"
extern char word[3];
int length = 5;
char* words[5] = {"for","not","cat","lex","min"};
int ascii(char * word){
    int sum =0;
    int i,a;
    for(i=0;i< strlen(word);i++){
        a = word[i];
        sum += a;
        }
    return sum;
    }
%}

%%
"for"|"not"|"cat"|"lex"|"min" { printf("%s is in the dictionary \n",yytext);return NAME; }
[a-z]+ {    if (strlen(yytext) != 3) { printf("The word enter is invalid"); }
            else {
                int i;
                int flag = 0;
                for(i=0;i<5;i++)
                {
                    if(ascii(words[i]) == ascii(yytext))
                        {
                        printf("It seems that you made a typo \n");
                        flag = 1;
                        break;
                        }
                    }
                    if (!flag){
                        printf("The word is invalid");
                    }

                }
            }
[ \t] ;

%%
