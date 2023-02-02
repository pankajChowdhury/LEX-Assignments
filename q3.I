%{

%}

%%
([0-9])+\+([0-9])+ {
    int a=0,b=0,i;
    for(i=0;yytext[i]!='+';i++)
    {
        a*=10;
        a+=yytext[i]-'0';
    }
    i++;
    for(;yytext[i]!='\0';i++)
    {
        b*=10;
        b+=yytext[i]-'0';
    }
    printf("Result is %d\n",a+b);
}
([0-9])+\-([0-9])+ {
    int a=0,b=0,i;
    for(i=0;yytext[i]!='-';i++)
    {
        a*=10;
        a+=yytext[i]-'0';
    }
    i++;
    for(;yytext[i]!='\0';i++)
    {
        b*=10;
        b+=yytext[i]-'0';
    }
    printf("Result is %d\n",a-b);
}
([0-9])+\*([0-9])+ {
    int a=0,b=0,i;
    for(i=0;yytext[i]!='*';i++)
    {
        a*=10;
        a+=yytext[i]-'0';
    }
    i++;
    for(;yytext[i]!='\0';i++)
    {
        b*=10;
        b+=yytext[i]-'0';
    }
    printf("Result is %d\n",a*b);
}
([0-9])+\/([0-9])+ {
    int a=0,b=0,i;
    for(i=0;yytext[i]!='/';i++)
    {
        a*=10;
        a+=yytext[i]-'0';
    }
    i++;
    for(;yytext[i]!='\0';i++)
    {
        b*=10;
        b+=yytext[i]-'0';
    }
    if(b==0)
    printf("Division by 0 not possible\n");
    else
    printf("Result is %d\n",a/b);
}
([0-9])+\%([0-9])+ {
    int a=0,b=0,i;
    for(i=0;yytext[i]!='%';i++)
    {
        a*=10;
        a+=yytext[i]-'0';
    }
    i++;
    for(;yytext[i]!='\0';i++)
    {
        b*=10;
        b+=yytext[i]-'0';
    }
    if(b==0)
    printf("Modulo by 0 not possible.\n");
    printf("Result is %d\n",a%b);
}
([0-9])+\^([0-9])+ {
    int a=0,b=0,i;
    for(i=0;yytext[i]!='^';i++)
    {
        a*=10;
        a+=yytext[i]-'0';
    }
    i++;
    for(;yytext[i]!='\0';i++)
    {
        b*=10;
        b+=yytext[i]-'0';
    }
    int ans=1;
    while(b--)
    ans*=a;
    printf("Result is %d\n",ans);
}
.* {printf("Invalid statement.\n");}
\n {return 0;}
%%

int yywrap(){}
int main()
{
    yylex();
    return 0;
}