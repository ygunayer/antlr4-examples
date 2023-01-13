grammar Foo;

prog: (FOO | BAR) EOF;

FOO: 'foo';
BAR: 'bar';

WS: [ \r\n\f\t]+ -> skip;
