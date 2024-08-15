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
else                       { return ELSE; }
boolean    { return BOOL; }
true   { return TRUE; }
false  { return FALSE; }
array|char|string|void|integer                        { return TYPE; }
if                         { return IF; }
for     { return FOR; }
function { return FUNC; }
while { return WHILE; }
return { return RETURN; }
print                                   { return PRINT; }
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
:                                           { return COLON; }
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


// (1,259,"boolean")
// (2,261,"else")
// (3,262,"false")
// (4,264,"function")
// (5,265,"if")
// (6,266,"integer")
// (7,267,"print")
// (8,268,"return")
// (9,269,"string")
// (10,270,"true")
// (11,271,"void")
// (12,272,"while")
// (13,263,"for")
// (14,260,"char")
