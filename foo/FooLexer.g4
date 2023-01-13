lexer grammar FooLexer;

FOO: 'foo';
BAR: 'bar';

WS: [ \r\n\f\t]+ -> skip;
