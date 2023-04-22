Definitions.
Rules.

[;|,|.|...|@|::] : {token,{separators,TokenLine,TokenChars}}.
\( : {token, {open_paren, TokenLine, TokenChars}}.
\) : {token, {close_paren, TokenLine, TokenChars}}.
\[ : {token, {open_bracket, TokenLine, TokenChars}}.
\] : {token, {close_bracket, TokenLine, TokenChars}}.
\{ : {token, {open_brace, TokenLine, TokenChars}}.
\} : {token, {close_brace, TokenLine, TokenChars}}.
true|false : {token,{bool,TokenLine,TokenChars}}.
abstract|continue|for|new|switch|assert|default|if|package|synchronized|boolean|do|goto|private|this|break|double|implements|protected|throw|byte|else|import|public|throws|case|enum|instanceof|return|transient|catch|extends|String|int|short|try|char|final|interface|static|void|class|finally|long|strictfp|volatile|const|float|native|super|while : {token,{reservedKeyword, TokenChars}}.
exports|opens|requires|uses|module|permits|sealed|var|non-sealed|provides|to|with|open|record|transitive|yield : {token,{contextualKeyword, TokenChars}}.
[0-9]+ : {token,{integer,TokenLine, TokenChars}}.
"([^"\n\\]|\\.)*" : {token,{string,TokenLine,TokenChars}}.
[\s\t\n\r]  : {token, {space, TokenLine, TokenChars}}.
(\/\*).?*(\*\/)* : {token,{blockComment,TokenLine,TokenChars}}.
\/\/.*?\n : {token,{inlineComment,TokenLine,TokenChars}}.
[a-zA-Z][a-zA-Z0-9_$]* : {token,{identifier,TokenLine,TokenChars}}.

. :skip_token.
Erlang code.



