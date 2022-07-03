DIGITO[0-9]
BINARIO[Z0-1]
COMENTARIO[^*/]*
LETRA[a-zA-Z]
WHITESPACE[ ]

%%
end                     {printf("Reservada: %s\n",yytext);}
if                      {printf("Reservada: %s\n",yytext);}
else                    {printf("Reservada: %s\n",yytext);}
while                   {printf("Reservada: %s\n",yytext);}
do                      {printf("Reservada: %s\n",yytext);} 
for                     {printf("Reservada: %s\n",yytext);}
int                     {printf("Reservada: %s\n",yytext);}
float                   {printf("Reservada: %s\n",yytext);}
char                    {printf("Reservada: %s\n",yytext);}
string                  {printf("Reservada: %s\n",yytext);}
include                 {printf("Reservada: %s\n",yytext);}
short                   {printf("Reservada: %s\n",yytext);}
break                   {printf("Reservada: %s\n",yytext);}
case                    {printf("Reservada: %s\n",yytext);}
switch                  {printf("Reservada: %s\n",yytext);}
const                   {printf("Reservada: %s\n",yytext);}
default                 {printf("Reservada: %s\n",yytext);}
double                  {printf("Reservada: %s\n",yytext);}
return                  {printf("Reservada: %s\n",yytext);}
long                    {printf("Reservada: %s\n",yytext);}
static                  {printf("Reservada: %s\n",yytext);}
enum                    {printf("Reservada: %s\n",yytext);}
struct                  {printf("Reservada: %s\n",yytext);}
sizeof                  {printf("Reservada: %s\n",yytext);}
void                    {printf("Reservada: %s\n",yytext);}
"+"                     {printf("Operador de soma: %s\n",yytext);}
"-"                     {printf("Operador de subtração: %s\n",yytext);}
"*"                     {printf("Operador de multiplicação: %s\n",yytext);}
"/"                     {printf("Operador de divisão: %s\n",yytext);}
"=="                    {printf("Operador de atribuição: %s\n",yytext);}
"="                     {printf("Operador de igualdade: %s\n",yytext);}
"!"                     {printf("Operador de negação: %s\n",yytext);}
"!="                    {printf("Operador de diferencia: %s\n",yytext);}
"["                     {printf("Colchete (inicio do elemento de arranjo): %s\n",yytext);}
"]"                     {printf("Colchete (fim do elemento de arranjo): %s\n",yytext);}
"("                     {printf("Parentese (inico do parametro): %s\n",yytext);}
")"                     {printf("Parentese (fim do parametro): %s\n",yytext);}
"{"                     {printf("Chave (inicio do metodo): %s\n",yytext);}
"}"                     {printf("Chave (fim do metodo): %s\n",yytext);}
";"                     {printf("Ponto e virgula (fim de linha): %s\n",yytext);}
":"                     {printf("Dois ponto (resolução de escopo): %s\n",yytext);}  
"++"                    {printf("Inclemento: %s\n",yytext);}
"--"                    {printf("Decremento: %s\n",yytext);}
">"                     {printf("Maior que...: %s\n",yytext);}
"<"                     {printf("Menor que...: %s\n",yytext);}   
">="                    {printf("Maior ou igual que...: %s\n",yytext);}   
"<="                    {printf("Menor ou igual que...: %s\n",yytext);} 
"&&"                    {printf("Operação AND: %s\n",yytext);}    
"!!"                    {printf("Operação OR...: %s\n",yytext);}  
"%"                     {printf("Modulo: %s\n",yytext);}  
"->"                    {printf("Ponteiro: %s\n",yytext);}  
"&"                     {printf("Referência (endereço de elemento): %s\n",yytext);}
","                     {printf("Virgula: %s\n",yytext);}  
{LETRA}+                {printf("Palavra: %s\n",yytext);}
{DIGITO}+               {printf("Inteiro: %s\n",yytext);}
{DIGITO}+"."{DIGITO}*   {printf("Real: %s\n",yytext);}
{BINARIO}*              {printf("Binario: %s\n",yytext);}
{WHITESPACE}+ /*Eliminaespacoembranco*/
.  /*Caracternaoreconhecido */ {printf("Cracter não reconhecido: %s\n",yytext);}
"/*"{COMENTARIO}"*/"    {printf("Comentario: %s\n",yytext);}

%%
int yywrap();

int main (void){
    yylex();
    return 0;
}
int yywrap (){
    return 1;
}