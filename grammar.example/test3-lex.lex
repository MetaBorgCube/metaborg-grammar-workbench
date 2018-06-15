[A-Z][A-Z]?[a-z]+[0-9]* {return char;}
[A-Z]|[a-z]|[0-9] {return char;}
([a] | [b]) | ([c] [e] | [d] [f]) { return char; }
