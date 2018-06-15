[^]A-Z]+ {return char;}
[^]-]+ {return char;}
[-] {return char;}
//[]] {return char;}
[0-9A-Z\tj ] {return char;}
[`~!@#$%^&*()_+=\\] {return char;}
"__" {return string;}
