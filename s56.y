%{
#include <stdio.h>
#include <stdlib.h>
#define YYDEBUG 1

#define TIP_INT 1
#define TIP_REAL 2
#define TIP_CAR 3

double stiva[20];
int sp;

void push(double x)
{ stiva[sp++]=x; }

double pop()
{ return stiva[--sp]; }

%}

%union {
  	int l_val;
	char *p_val;
}

%token RETURN
%token DOUBLE
%token NEW
%token AUTO
%token ELSE
%token BREAK
%token PUBLIC
%token PRIVATE
%token IF
%token WHILE
%token DO
%token INT
%token FOR
%token LONG
%token VOID
%token CLASS
%token ECHO
%token PRINT
%token BOOL
%token MAIN
%token STRING

%token CHAR
%token REAL

%token PR_O;
%token PR_C;
%token BR_O;
%token BR_C;
%token OPCIN;
%token OPCOUT;
%token STRICT_LESS;
%token STRICT_GREAT;
%token E;
%token ATRIB;
%token NE;
%token LE;
%token GE;
%token AND;
%token OR;
%token NOT;
%token MOD;
%token DIV;
%token PR_O;

%token ID
%token CONST_INT
%token CONST_REAL
%token CONST_CAR
%token CONST_SIR

%left '+' '-'
%left DIV MOD '*' 
%left LE GE E NE STRICT_GREAT STRICT_LESS 
%left OR
%left AND
%left NOT

%type <l_val> constanta
%%
program:	INT MAIN PR_O PR_C BR_O statement_list BR_C
		;
statement_list:	statement 
		| statement ';' statement_list
		;
statement:	declaration_list
		| simple_statement
		| compound_statement
		| arraydecl
		;
declaration_list: declaration
		| declaration ';' declaration_list
		;
declaration:	type ID
		| type ID '=' input
		;
type:	        BOOL
		| INT
		| STRING
		;

input:	        STRING|CONST_INT
		;
arraydecl:	type ID '[' ']' '=' '{' '}' ';'
		| type ID '[' CONST_INT ']' '=' list ';'
		;
list:		term '{' ',' list '}'
		;
term:	        term '*' factor ';' 
		| factor ';'
		;
factor:	        ID ';'
		;
simple_statement: assignment ';' 
		| input_output_statement ';'
		;
assignment:	ID '=' term ';'
		;
input_output_statement:	 PRINT '<' '<' output ';'
		;
output:	        STRING|CONST_INT
		;
compound_statement: if_statement 
		| while_statement
		;
if_statement:	IF '(' expression ')' statement_list
		;
expression:     constanta
                | ID
                | expression '+' expression
                | expression '-' expression
                | expression MOD expression 
                | expression '*' expression
                | expression DIV expression
                | expression LE expression
                | expression STRICT_LESS expression
                | expression STRICT_GREAT expression
                | expression GE expression
                | expression E expression
                | expression NE expression
                | expression AND expression
                | expression OR expression
                | NOT PR_O expression PR_C
		;
while_statement : WHILE '(' expression ')' '{' statement_list '}'
constanta:	CONST_INT	{
			
				}
		| CONST_REAL	{
			
				}
		| CONST_CAR	{
			
				}
	        | CONST_SIR   
	        	{
	    		}  
		;

%%

yyerror(char *s)
{
  printf("%s\n", s);
}

extern FILE *yyin;

main(int argc, char **argv)
{
  if(argc>1) yyin = fopen(argv[1], "r");
  if((argc>2)&&(!strcmp(argv[2],"-d"))) yydebug = 1;
  if(!yyparse()) fprintf(stderr,"\tO.K.\n");
}
