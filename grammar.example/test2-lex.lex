[^A-Z]+ {return char;}
[0-9A-Z\t\ -] {return char;}
[`~!@#$%^&*()_+=\\] {return char;}
"__" {return string;}
