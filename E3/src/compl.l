%option noyywrap yylineno
%{

// noyywrap    - no need to deal with multiple input files
// yylineno    - variable to track line numbers 
//               that copies otherwise unmatched input to yyout.

#include "token.h"

%}

letter [A-Za-z]

%%
"//".*                               { } // Ignora os comentários
[ \n\t\r]+                              { }  // Ignorar espaços em branco e novas linhas
array|boolean|char|string|void|integer                        { return TYPE; }
if                         { return IF; }
else                       { return ELSE; }
for|function|return|while { return KEY; }
print                                   { return PRINT; }
false|true                                  { return BOOL; }
{letter}({letter}|[0-9]|(\_))*              { return ID; }
"\+"                                           { return ADD; }
-                                           { return SUB; }
\*                                           { return TIMES; }
\/                                           { return DIV; }
%                                           { return MOD; }
"\!"                                           { return NOT; }
"<"                                           { return LT; }
>                                           { return GT; }
"\<\="                                          { return LEQ; }
>=                                          { return GEQ; }
==|=                                          { return EQ; }
!=                                          { return NEQ; }
\(                                          { return LPAREN; }
\)                                          { return RPAREN; }
\{                                          { return LBRACE; }
\}                                          { return RBRACE; }
\[                                          { return LBRACKET; }
\]                                          { return RBRACKET; }
\;                                          { return SEMICOLON; }
\,                                          { return COMMA; }
\|\|                                        { return OR; }

[0-9]+                                  { return NUM; }
\'(.|\\'|\\0|\\n|\ )\'                     { return CHAR; }
\"[^\"\n]*\"                              { return STR; }
.                                       { return ERROR; }
%%

