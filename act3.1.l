%{#include <stdio.h>%}

%%
\/\/.*                { printf("COMMENT\n"); }
"f"                   { printf("floatdcl\n"); }
[0-9]+.[0-9]+        { printf("fnum\n"); }
[0-9]+                { printf("inum\n"); }
"i"                   { printf("intdcl\n"); }
"p"                   { printf("print\n"); }
[a-zA-Z][a-zA-Z0-9]*  { printf("id\n"); }
"*"                { printf("multiply\n"); }
"/"                { printf("divide\n"); }
"="                { printf("assign\n"); }
"+"                { printf("plus\n"); }
"-"                { printf("minus\n"); }
[\t]                        {}
.                  {/ IGNORE */}
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}