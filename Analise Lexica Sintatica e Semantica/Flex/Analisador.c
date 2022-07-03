DIGITO[0-9]
BINARIO[Z0-1]
COMENTARIO[^*/]*
LETRA[a-zA-Z]
WHITESPACE[ ]

%%
end                                  {printf("Reservada: %s\n",yytext);}
if                                   {printf("Reservada: %s\n",yytext);}
else                                 {printf("Reservada: %s\n",yytext);}
while                                {printf("Reservada: %s\n",yytext);}
do                                   {printf("Reservada: %s\n",yytext);} 
for                                  {printf("Reservada: %s\n",yytext);}
int                                  {printf("Reservada: %s\n",yytext);}
float                                {printf("Reservada: %s\n",yytext);}
float                                {printf("Reservada: %s\n",yytext);}
char                                 {printf("Reservada: %s\n",yytext);}
string                               {printf("Reservada: %s\n",yytext);}
include                              {printf("Reservada: %s\n",yytext);}
short                                {printf("Reservada: %s\n",yytext);}
break                                {printf("Reservada: %s\n",yytext);}
case                                 {printf("Reservada: %s\n",yytext);}
switch                               {printf("Reservada: %s\n",yytext);}
const                                {printf("Reservada: %s\n",yytext);}
default                              {printf("Reservada: %s\n",yytext);}
double                               {printf("Reservada: %s\n",yytext);}
return                               {printf("Reservada: %s\n",yytext);}
long                                 {printf("Reservada: %s\n",yytext);}
static                               {printf("Reservada: %s\n",yytext);}
"+"                                  {printf("Operador de soma: %s\n",yytext);}
"-"                                  {printf("Operador de subtração: %s\n",yytext);}
"*"                                  {printf("Operador de multiplicação: %s\n",yytext);}
"/"                                  {printf("Operador de divisão: %s\n",yytext);}
"=="                                 {printf("Operador de atribuição: %s\n",yytext);}
"="                                  {printf("Operador de igualdade: %s\n",yytext);}
"!"                                  {printf("Negação: %s\n",yytext);}
"("                                  {printf("Inico do parametro: %s\n",yytext);}
")"                                  {printf("Fim do parametro: %s\n",yytext);}
"{"                                  {printf("Inicio do metodo: %s\n",yytext);}
"}"                                  {printf("Fim do metodo: %s\n",yytext);}
";"                                  {printf("Ponto e virgula: %s\n",yytext);}
{LETRA}+                             {printf("Palavra: %s\n",yytext);}
{DIGITO}+                            {printf("Inteiro: %s\n",yytext);}
{DIGITO}+"."{DIGITO}*                {printf("Real: %s\n",yytext);}
{BINARIO}*                           {printf("Binario: %s\n",yytext);}
{WRITESPACE}+ /*Eliminaespacoembranco*/
.  /*Caracternaoreconhecido */       {printf("Cracter não reconhecido: %s\n",yytext);}
"/*"{COMENTARIO}"*/"                 {printf("Comentario: %s\n",yytext);}

%%
int yywrap();

int main (void){
    yylex();
    return 0;
}
int yywrap (){
    return 1;
}