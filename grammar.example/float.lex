// Adapted from http://dinosaur.compilertools.net/lex/index.html Section 6
D                   [0-9]
%{%}
E                   [DEde][-+]?{D}+
%%
{D}+                { return integer; }
{D}+"."{D}*({E})?   |
{D}*"."{D}+({E})?   |
{D}+{E}             { return real; }
