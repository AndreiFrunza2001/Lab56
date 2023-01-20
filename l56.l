/*** Definition Section ***/
%{
#include <string.h>
#include "y.tab.h"
%}

%option noyywrap
%option caseless

LITERA		[A-Za-z_]
CIFRA		[0-9A-Fa-f]
CIFRA_ZEC	[0-9]
IDENTIFICATOR	{LITERA}({LITERA}|{CIFRA_ZEC})*
NR_BAZA10	{CIFRA_ZEC}+
EXPON		(E|e)("+"?|"-"){CIFRA_ZEC}{1,2}
NR_REAL		{NR_BAZA10}"."{NR_BAZA10}{EXPON}?
DELIMIT_1	[;.,]
OPERATOR_1	[+*()]|"-"|"["|"]"
SIR_CAR		["][^\n"]*["]
CARACTER	"'"[^\n]"'"
/*** Rule Section ***/
%%

[ \t\n]

return                                  {printf("RETURN\n"); return RETURN; }
double                                  {printf("DOUBLE\n"); return DOUBLE; }
new                                     {printf("NEW\n"); return NEW; }
auto                                    {printf("AUTO\n"); return AUTO; }
else                                    {printf("ELSE\n"); return ELSE; }
break                                   {printf("BREAK\n"); return BREAK; }
public                                  {printf("PUBLIC\n"); return PUBLIC; }
private                                 {printf("PRIVATE\n"); return PRIVATE; }
if                                      {printf("IF\n"); return IF; }
while                                   {printf("WHILE\n"); return WHILE; }
do                                      {printf("DO\n"); return DO; }
int                                     {printf("INT\n"); return INT; }
for                                     {printf("FOR\n"); return FOR; }
long                                    {printf("LONG\n"); return LONG; }
void                                    {printf("VOID\n"); return VOID; }
class                                   {printf("CLASS\n"); return CLASS; }
echo                                    {printf("ECHO\n"); return ECHO; }
print                                   {printf("PRINT\n"); return PRINT; }
bool                                    {printf("BOOL\n"); return BOOL; }
main                                    {printf("MAIN\n"); return MAIN; }
string                                  {printf("STRING\n"); return STRING; }

char					{printf("CHAR\n"); return CHAR; }
real 					{printf("REAL\n"); return REAL; }

"("            				{printf("PR_O"); return PR_O;}
")"             			{printf("PR_C"); return PR_C;}
"{"             			{printf("BR_O"); return BR_O;}
"}"             			{printf("BR_C"); return BR_C;}
">>"            			{printf("OPCIN"); return OPCIN;}
"<<"           				{printf("OPCOUT"); return OPCOUT;}
"<"					{printf("STRICT_LESS"); return STRICT_LESS;}
">"					{printf("STRICT_GREAT"); return STRICT_GREAT;}
"=="            			{printf("E");return E;}
"="					{printf("ATRIB");return ATRIB;}
"!="					{printf("NE");return NE;}
"<="					{printf("LE");return LE;}
">="					{printf("GE");return GE;}
"&&"            			{printf("AND"); return AND;}
"||"            			{printf("OR"); return OR;}
"!"             			{printf("NOT"); return NOT;}
"'%'"           			{printf("MOD"); return MOD;}
"/"             			{printf("DIV"); return DIV;}
{IDENTIFICATOR}	{printf("ID");return ID;}
{NR_BAZA10}	{
	yylval.p_val = yytext;
	printf("CONST_INT");
	return CONST_INT;
		}
{NR_REAL}	{
	yylval.p_val = yytext;
	printf("CONST_REAL");
	return CONST_REAL;
		}
{CARACTER}	{
	yylval.p_val = yytext;
	printf("CONST_CHAR");
	return CONST_CAR;
		}
{SIR_CAR}	{
printf("CONST_SIR");
return CONST_SIR;}

{DELIMIT_1}	{printf("%s", yytext); return yytext[0];}
{OPERATOR_1}	{printf("%s", yytext); return yytext[0];}
%%

