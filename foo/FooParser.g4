parser grammar FooParser;

options { tokenVocab = FooLexer; }

prog: (FOO | BAR) EOF;