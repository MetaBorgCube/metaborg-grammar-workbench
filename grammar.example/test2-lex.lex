[A-Z0-9\t\ -] {return char;}
[`~!@#$%^&*()_+=\\] {return char;}
"__" {return string;}
