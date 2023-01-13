grammar ArithmeticExpression;

rootExpr: expr EOF;

expr
  : (MINUS | PLUS)? NUMBER #numberExpr
  | OPEN_PAREN expr CLOSE_PAREN #parenExpr
  | left=expr TIMES right=expr #multExpr
  | left=expr DIV right=expr #divExpr
  | left=expr MINUS right=expr #subExpr
  | left=expr PLUS right=expr #addExpr;

PLUS: '+';
MINUS: '-';
DIV: '/';
TIMES: '*';

OPEN_PAREN: '(';
CLOSE_PAREN: ')';

NUMBER: [0-9]+;

WS: [ \r\n\f\t] -> skip;