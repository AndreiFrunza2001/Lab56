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

%token NO
%token CH
%token ST
%token ID
%token FL
%token SEP
%token OP

%token LETTER
%token DIGIT
%token UNDERSCORE


%%
program:	INT MAIN '(' ')' '{'statement_list'}'
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
identifier:	LETTER
		|UNDERSCORE
		|LETTER'{'LETTER'}''{'DIGIT'}''{'UNDERSCORE'}'
		|UNDERSCORE'{'LETTER'}''{'DIGIT'}''{'UNDERSCORE'}'
		;
input:	        STRING|NO
		;
arraydecl:	type ID '[' ']' '=' '{' '}' ';'
		| type ID '[' NO ']' '=' list ';'
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
output:	        STRING|NO
		;
compound_statement: if_statement 
		| while_statement
		;
if_statement:	IF '(' condition ')' statement_list
		;
condition :     term OP term | ID OP ID | ID OP NO
		;
while_statement : WHILE '(' condition ')' '{' statement_list '}'


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
