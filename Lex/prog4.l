%{
int c=0;
%}

%%
"printf"|"scanf"|"int"|"float" {;}
[a-zA-Z_][a-zA-Z0-9_]* {printf("%s is an identifier\n",yytext); c++;}
.* {;}
\n {;}
%%

int yywrap(void){
return 1;
}

int main(int argc, char*argv[])
{
    yyin=fopen(argv[1], "r");
    yylex();
    printf("Number of identifers is : %d\n", c);
    return 0;
}
