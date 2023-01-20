/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    RETURN = 258,                  /* RETURN  */
    DOUBLE = 259,                  /* DOUBLE  */
    NEW = 260,                     /* NEW  */
    AUTO = 261,                    /* AUTO  */
    ELSE = 262,                    /* ELSE  */
    BREAK = 263,                   /* BREAK  */
    PUBLIC = 264,                  /* PUBLIC  */
    PRIVATE = 265,                 /* PRIVATE  */
    IF = 266,                      /* IF  */
    WHILE = 267,                   /* WHILE  */
    DO = 268,                      /* DO  */
    INT = 269,                     /* INT  */
    FOR = 270,                     /* FOR  */
    LONG = 271,                    /* LONG  */
    VOID = 272,                    /* VOID  */
    CLASS = 273,                   /* CLASS  */
    ECHO = 274,                    /* ECHO  */
    PRINT = 275,                   /* PRINT  */
    BOOL = 276,                    /* BOOL  */
    MAIN = 277,                    /* MAIN  */
    STRING = 278,                  /* STRING  */
    CHAR = 279,                    /* CHAR  */
    REAL = 280,                    /* REAL  */
    PR_O = 281,                    /* PR_O  */
    PR_C = 282,                    /* PR_C  */
    BR_O = 283,                    /* BR_O  */
    BR_C = 284,                    /* BR_C  */
    OPCIN = 285,                   /* OPCIN  */
    OPCOUT = 286,                  /* OPCOUT  */
    STRICT_LESS = 287,             /* STRICT_LESS  */
    STRICT_GREAT = 288,            /* STRICT_GREAT  */
    E = 289,                       /* E  */
    ATRIB = 290,                   /* ATRIB  */
    NE = 291,                      /* NE  */
    LE = 292,                      /* LE  */
    GE = 293,                      /* GE  */
    AND = 294,                     /* AND  */
    OR = 295,                      /* OR  */
    NOT = 296,                     /* NOT  */
    MOD = 297,                     /* MOD  */
    DIV = 298,                     /* DIV  */
    ID = 299,                      /* ID  */
    CONST_INT = 300,               /* CONST_INT  */
    CONST_REAL = 301,              /* CONST_REAL  */
    CONST_CAR = 302,               /* CONST_CAR  */
    CONST_SIR = 303                /* CONST_SIR  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define RETURN 258
#define DOUBLE 259
#define NEW 260
#define AUTO 261
#define ELSE 262
#define BREAK 263
#define PUBLIC 264
#define PRIVATE 265
#define IF 266
#define WHILE 267
#define DO 268
#define INT 269
#define FOR 270
#define LONG 271
#define VOID 272
#define CLASS 273
#define ECHO 274
#define PRINT 275
#define BOOL 276
#define MAIN 277
#define STRING 278
#define CHAR 279
#define REAL 280
#define PR_O 281
#define PR_C 282
#define BR_O 283
#define BR_C 284
#define OPCIN 285
#define OPCOUT 286
#define STRICT_LESS 287
#define STRICT_GREAT 288
#define E 289
#define ATRIB 290
#define NE 291
#define LE 292
#define GE 293
#define AND 294
#define OR 295
#define NOT 296
#define MOD 297
#define DIV 298
#define ID 299
#define CONST_INT 300
#define CONST_REAL 301
#define CONST_CAR 302
#define CONST_SIR 303

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 21 "s56.y"

  	int l_val;
	char *p_val;

#line 168 "y.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
