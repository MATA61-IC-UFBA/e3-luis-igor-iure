/* token.h */

typedef enum {
        ADD = 43,
        SUB = 45,
        OR = 278,
        TIMES = 42,
        DIV = 47,
        MOD = 37,
        NOT = 33,
        LT = 60,
        GT = 62,
        COLON = 58,
        SEMICOLON = 59,
        COMMA = 44,
        LPAREN = 40,
        RPAREN = 41,
        LBRACE = 123,
        RBRACE = 125,
        LBRACKET = 91,
        RBRACKET = 93,
        TYPE = 266,
        KEY = 264,
        BOOL = 266,
        PRINT = 267,

        IF = 265,
        ELSE = 261,
        FOR = 262,



        AND = 277,
        EQ = 61,
        NEQ = 62,
        LEQ = 273,
        GEQ = 274,
        ID = 256,
	NUM, 
        SYM,  
        SYMC, 
        CHAR,
	STR,
	ERROR
} token_t; 
