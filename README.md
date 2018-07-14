# Metaborg Grammar Workbench

[![Build Status](https://travis-ci.org/mpsijm/metaborg-grammar-workbench.svg?branch=master)](https://travis-ci.org/mpsijm/metaborg-grammar-workbench)

This Grammar Workbench has been built as a part of the TU Delft course IN4333 Language Engineering Project. The main purpose of this workbench is to convert YACC and LEX specifications to SDF3.

## YACC Features

- [Syntax](yacc/syntax/yacc.sdf3)
- Analysis ([NaBL2](yacc/trans/static-analysis.nabl2) and [custom](yacc/trans/custom-analysis.str))
- [Editor outline](yacc/trans/outline.str)
- [Desugaring](yacc/trans/desugar.str)
- [Code generation to SDF3](yacc/trans/codegen/codegen-yacc.str)

## LEX Features

- [Syntax](lex/syntax/lex.sdf3)
- [Editor outline](lex/trans/outline.str)
- [Code generation to SDF3](lex/trans/codegen/codegen-lex.str)

## Architecture

Both LEX and YACC have a `Grammar` that consists of three parts:
- A `Definitions` part that contains the header. This part contains rules like start symbol, associativity rules, token definitions, etc.
- A `Rules` part that contains the actual rules.
- A `Tail` part that only contains C code, which is ignored in this workbench.

In the syntax, static-analysis, outline and code generation files, the rules have been ordered to reflect these parts, where the top-level `Grammar` also has its own part.

## Sources

- Johnson, S. C. (1975). Yacc: Yet another compiler-compiler (Vol. 32). Murray Hill, NJ: Bell Laboratories. [Link](http://dinosaur.compilertools.net/yacc/)
- Jinks, P. (2004). Example of Formalising a Grammar for use with Lex & Yacc. University of Manchester, course CS2121. [Link](http://www.cs.man.ac.uk/~pjj/cs212/ex5_hint.html)
- Metaborg. (2018). SDF on GitHub. [Link](https://github.com/metaborg/sdf)
- Lee, J. (1985). ANSI C Yacc grammar. [Link](https://www.lysator.liu.se/c/ANSI-C-grammar-y.html)
- Lee, J. (1985). ANSI C grammar, Lex specification. [Link](https://www.lysator.liu.se/c/ANSI-C-grammar-l.html)
