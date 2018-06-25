%%
[A-Z][A-Z]?[a-z]+[0-9]* {return c;}
[A-Z]|[a-z]|[0-9] {return c;}
(a | b) | (c e | d f) { return c; }
a|b?|c+|d* { return c; }
a{2,6} { return c; }
