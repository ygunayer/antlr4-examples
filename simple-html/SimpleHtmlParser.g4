parser grammar SimpleHtmlParser;

options { tokenVocab = SimpleHtmlLexer; }

doc: (WS* element WS*)* EOF;

element: (selfClosingElement | blockElement | comment);

selfClosingElement: OPEN tagName=NAME attributes? SLASH_CLOSE;

blockElement
  : OPEN tagName=NAME attributes? CLOSE
      WS*
      blockContent?
      WS*
    SLASH_OPEN closingTagName=NAME CLOSE;

blockContent: (text=TEXT | element) (WS* blockContent)*;

comment: COMMENT;

attributes: attribute (attribute)*;
attribute: name=NAME EQ value=STRING_LITERAL;
