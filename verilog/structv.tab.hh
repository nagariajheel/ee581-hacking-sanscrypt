/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
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
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

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

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_STRUCTV_TAB_HH_INCLUDED
# define YY_YY_STRUCTV_TAB_HH_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    MODULE = 258,
    INPUT = 259,
    OUTPUT = 260,
    WIRE = 261,
    ENDMODULE = 262,
    LPAREN = 263,
    ASSIGN = 264,
    EQUALS = 265,
    COMMA = 266,
    RPAREN = 267,
    LBRACKET = 268,
    RBRACKET = 269,
    DOT = 270,
    SEMICOLON = 271,
    COLON = 272,
    LBRACE = 273,
    RBRACE = 274,
    NUMBER = 275,
    ID = 276,
    BINCONST = 277
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 24 "structv.y"

    int int_val;
    char* str_val;
    constant_t const_val;

    wire_list_t* idlist_val;

    module_list_t* module_list_val;
    module_t* module_val;
    module_head_t* module_head_val;

    stm_list_t* statement_list_val;
    stm_t* statement_val;

    module_inst_t* module_inst_val;
    bindinglist_t* bindlist_val;

    assgn_t* assgn_val;
    exp_t* exp_val;
    exp_list_t* exp_list_val;

    wirename_t* wirename_val;
    wire_list_t* wire_val;
    wire_list_t* input_val; 
    wire_list_t* output_val;

#line 107 "structv.tab.hh"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_STRUCTV_TAB_HH_INCLUDED  */
