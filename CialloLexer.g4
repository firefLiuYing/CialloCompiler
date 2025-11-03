lexer grammar CialloLexer;

INT     : 'int';
FLOAT   : 'float';
CHAR    : 'char';
IF      : 'if';
ELSE    : 'else';
WHILE   : 'while';
FOR     : 'for';
BREAK   : 'break';
CONTINUE: 'continue';

// ???
PLUS    : '+';
MINUS   : '-';
MUL     : '*';
DIV     : '/';
MOD     : '%';
ASSIGN  : '=';
PLUS_ASSIGN : '+=';
MINUS_ASSIGN : '-=';
MUL_ASSIGN : '*=';
DIV_ASSIGN : '/=';
INC     : '++';
DEC     : '--';

EQ      : '==';
NEQ     : '!=';
LT      : '<';
LE      : '<=';
GT      : '>';
GE      : '>=';

// ???
LPAREN  : '(';
RPAREN  : ')';
LBRACE  : '{';
RBRACE  : '}';
LBRACK  : '[';
RBRACK  : ']';
SEMI    : ';';
COMMA   : ',';

// ???????
ID      : [a-zA-Z_][a-zA-Z0-9_]*;
NUMBER  : [0-9]+ ('.' [0-9]+)?;
CHAR_LITERAL : '\'' . '\'';

// ??
LINE_COMMENT  : '//' ~[\r\n]* -> skip;
BLOCK_COMMENT : '/*' .*? '*/' -> skip;

// ????
WS : [ \t\r\n]+ -> skip;
