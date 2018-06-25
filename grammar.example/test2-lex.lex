%%
[^]A-Z]+ {return c;}
[^]-]+ {return c;}
[-] {return c;}
[]] {return c;}
[0-9A-Z\tj ] {return c;}
[`~!@#$%^&*()_+=\\] {return c;}
"__" {return s;}
