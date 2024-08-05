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
array|boolean|char|else|false|for|function|if|integer|print|return|string|true|void|while { return KEY; }
{letter}({letter}|[0-9]|(\_))*          { return ID; }
[\+\-\*\/%!\<\>\=\:\;\,\(\)\{\}\[\]\\]      { return SYM; }
(<=|>=|==|!=|&&|\|\|)                   { return SYMC; }
[0-9]+                                  { return NUM; }
\'(.|\\'|\\0|\\n|\ )\'     { return CHAR; }
\"[^\"\n]*\"                              { return STR; }
.                                       { return ERROR; }
%%

