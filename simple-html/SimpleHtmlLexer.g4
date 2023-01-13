lexer grammar SimpleHtmlLexer;

OPEN: '<' -> pushMode(IN_TAG);
SLASH_OPEN: '</' -> pushMode(IN_TAG);
COMMENT: '<!--' TEXT '-->';

WS: [ \r\n\t\f]+;

TEXT: ~[<]+;

mode IN_TAG;
CLOSE: '>' -> popMode;
SLASH_CLOSE: '/>' -> popMode;

WS_IN: [ \r\n\t\f]+ -> skip;

EQ: '=';
NAME: [A-Za-z] [A-Za-z0-9._-]*;

STRING_LITERAL: '"' ~[<"]+ '"';
