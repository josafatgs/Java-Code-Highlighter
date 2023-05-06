Definitions.

Rules.

([0-9]+\.[0-9]*[eE][+-]?[0-9]+[fFdD]?)         : {token,{float,TokenLine, TokenChars}}.
([0-9]+\.[0-9]*[fFdD]?)                        : {token,{float,TokenLine, TokenChars}}.
([0-9]*\.[0-9]+[eE][+-]?[0-9]+[fFdD]?)         : {token,{float,TokenLine, TokenChars}}.  
([0-9]*\.[0-9]+[fFdD]?)                        : {token,{float,TokenLine, TokenChars}}.
([0-9]+[eE][+-]?[0-9]+[fFdD]?)|([0-9]+[fFdD]+) : {token,{float,TokenLine, TokenChars}}.

(0[0-7_]+[lL]*)                                : {token,{integer,TokenLine, TokenChars}}.
(0[bB][01_]+[lL]*)                             : {token,{integer,TokenLine, TokenChars}}.
([0-9_]+[lL]*)                                 : {token,{integer,TokenLine, TokenChars}}.
(0[xX][0-9a-fA-F_]+[lL]*)                      : {token,{integer,TokenLine, TokenChars}}.

\'(\\.|[^\\\'\n\r])*\'                         : {token,{character,TokenLine, TokenChars}}.
[;|,|.|...|@|::]                               : {token,{separators,TokenLine,TokenChars}}.
[\(\)\[\]\{\}]                                 : {token,{separators,TokenLine,TokenChars}}.
true|false                                     : {token,{bool,TokenLine,TokenChars}}.
null                                           : {token,{null,TokenLine,TokenChars}}.

abstract|continue|for|new|switch|assert|default|if|package|synchronized|boolean|do|goto|private|this|break|double|implements|protected|throw|byte|else|import|public|throws|case|enum|instanceof|return|transient|catch|extends|String|int|short|try|char|final|interface|static|void|class|finally|long|strictfp|volatile|const|float|native|super|while : {token,{reservedKeyword,TokenLine ,TokenChars}}.
exports|opens|requires|uses|module|permits|sealed|var|non-sealed|provides|to|with|open|record|transitive|yield : {token,{contextualKeyword,TokenLine, TokenChars}}.

[\?\+\-\*\/\=\<\>\!\&\|\^\%\~][\?\+\-\*\/\=\<\>\!\&\|\^\%]*  : {token, {list_to_atom(TokenChars), TokenLine, TokenChars}}.

\/\*(.|[\r\n])*?\*\/    : {token,{multiLineComment,TokenLine,TokenChars}}.
\/\/.*\n                : {token,{inlineComment,TokenLine,TokenChars}}.

\".*\"                  : {token,{string, TokenLine, TokenChars}}.
[a-zA-Z_$][a-zA-Z_0-9]* : {token,{identifier,TokenLine,TokenChars}}.
[\s\t\n\r]              : {token,{space, TokenLine, TokenChars}}.


Erlang code.



