parser grammar CialloParser;

options { tokenVocab=CialloLexer; }

program : statement* EOF;

statement 
    : declaration
    | assignment
    | ifStmt
    | whileStmt
    | forStmt
    | breakStmt
    | continueStmt
    ;

declaration 
    : type ID (ASSIGN expression)? SEMI
    ;

type 
    : INT | FLOAT | CHAR
    ;

assignment 
    : ID (LBRACK expression RBRACK)* ASSIGN expression SEMI
    ;

ifStmt 
    : IF LPAREN expression RPAREN statement (ELSE statement)?
    ;

whileStmt 
    : WHILE LPAREN expression RPAREN statement
    ;

forStmt 
    : FOR LPAREN assignment? SEMI expression? SEMI assignment? RPAREN statement
    ;

breakStmt 
    : BREAK SEMI
    ;

continueStmt 
    : CONTINUE SEMI
    ;

expression
    : expression (MUL | DIV) expression
    | expression (PLUS | MINUS) expression
    | expression (EQ | NEQ | LT | LE | GT | GE) expression
    | ID
    | NUMBER
    | CHAR_LITERAL
    | LPAREN expression RPAREN
    ;
