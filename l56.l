/*** Definition Section ***/
%{
#include <string.h>
#include "y.tab.h"
%}

LETTER		[A-Za-z]
UNDERSCORE	[_]
DIGIT   	[0-9]
IDENTIFIER	{LETTER}|{UNDERSCORE}({LETTER}|{DIGIT}|{UNDERSCORE})*
NO              {DIGIT}+  
NOCONST         {NO}|"+"{NO}|"-"{NO} 
CHARCONST       {LETTER}|{DIGIT}
STRINGCONST     {CHARCONST}+
FLOATCONST      {NO}"."{NO}+     
SEPARATOR       [;\n]|"["|"]"|"{"|"}"|"("|")" 
OPERATOR        "+"|"-"|"<"|"<="|"="|"=="|">="|">"|"*"|"/"|"%"|"!="|"&&"|"||"
/*** Rule Section ***/
%%
return                                  { return RETURN; }
double                                  { return DOUBLE; }
new                                     { return NEW; }
auto                                    { return AUTO; }
else                                    { return ELSE; }
break                                   { return BREAK; }
public                                  { return PUBLIC; }
private                                 { return PRIVATE; }
if                                      { return IF; }
while                                   { return WHILE; }
do                                      { return DO; }
int                                     { return INT; }
for                                     { return FOR; }
long                                    { return LONG; }
void                                    { return VOID; }
class                                   { return CLASS; }
echo                                    { return ECHO; }
print                                   { return PRINT; }
bool                                    { return BOOL; }
main                                    { return MAIN; }
string                                  { return STRING; }
{NOCONST}				{ return NO; }
{CHARCONST}				{ return CH; }
{STRINGCONST}				{ return ST; }
{IDENTIFIER}				{ return ID; }
{FLOATCONST}				{ return FL; }
{SEPARATOR}				{ return SEP; }
{OPERATOR}				{ return OP; }

%%
