local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local function dp(args)
	return args[1][1]
end

return {
	s({
		trig = "main",
		name = "Default Main",
		desc = "A basic main function",
	},
	{
		t({ "int main() {" }),
		t({ "", "	" }),
		i(0),
		t({ "", "	return 0;", "}" }),
	}
	),
	s({
		trig = "fun",
		name = "Function",
		desc = "Function declaration",
	},
	{
		i(2, "void"),
		t" ",
		i(1, "fun"),
		t"(",
		i(3, "args"),
		t") {",
		i(0),
		t"}",
	}
	),
	s({
		trig = "typestruct",
		name = "Typedef Struct",
		desc = "Typedef using a struct",
	},
	{
		t({ "typedef struct {", "  " }),
		i(2),
		t({ "", "} " }),
		i(1, "Name_t"),
		t(";"),
	}
	),
	s({
		trig = "typeunion",
		name = "Typedef Union",
		desc = "Typedef using a union",
	},
	{
		t({ "typedef union {", "  " }),
		i(2),
		t({ "", "} " }),
		i(1, "Name_t"),
		t(";"),
	}
	),
	s({
		trig = "enum",
		name = "Enum",
	},
	{
		t"enum ",
		i(1, "NAME"),
		t({ " {", "  " }),
		i(2),
		t({ "", "};" }),
	}
	),
	s({
		trig = "gt",
		name = "Greater Than",
	},
	{ t">" }
	),
	s({
		trig = "lt",
		name = "Less Than",
	},
	{ t"<" }
	),
	s({
		trig = "leq",
		name = "Less Than or Equal",
	}, { t"<=" }
	),
	s({
		trig = "geq",
		name = "Greater Than or Equal",
	}, { t">=" }
	),
	s({
		trig = "/",
		name = "One Line Comment"
	},
	{
		t"/*",i(0),t"*/"
	}),
	s({
		trig = "//",
		name = "Multiline Comment"
	},
	{
		t"/* ", i(0), t({"","*/"})
	}),
	s({
		trig = "#inc",
		name = "#include<...> snippet"
	},
	{
		t"#include <", i(0), t">"
	}),
	s({
		trig = "#incl",
		name = "#include \"...\" snippet"
	},
	{
		t"#include \"", i(0), t"\""
	}),
	s({
		trig = "#def",
		name = "Define Macro Snippet"
	},{
		t"#define ", i(0,"MACRO"),
	}),
	s({
		trig = "if",
		name = "If Condition"
	},{
		t"if (", i(1,"condition"), t({") {", "	"}),
		i(2),
		t({"","}"})
	}),
	s({
		trig = "ifi",
		name = "Inline If"
	},{
		t"if (", i(1,"condition"), t") "
	}),
	s({
		trig = "elseif",
		name = "Else-If Block"
	},{
		t"else if (", i(1,"condition"), t({") {", "	"}),
		i(2),
		t({"","}"})
	}),
	s({
		trig = "else",
		name = "Else Block"
	},{
		t({ "else {", "	" }),
		i(1),
		t({ "","}" })
	}),
	s({
		trig = "switch",
		name = "Switch Statement"
	},{
		t"switch (", i(1,"expression"), t({") {", "	"}),
		i(0),
		t({"","}"})
	}),
	s({
		trig = "while",
		name = "While Loop"
	},{
		t"while (", i(1,"1"), t({") {", "	"}),
		i(2),
		t({ "","}" })
	}),
	s({
		trig = "do",
		name = "Do-While Loop"
	},{
		t({ "do {", "	" }),
		i(1),
		t({"","} while ("}), i(2, "condition"), t")"
	}),
	s({
		trig = "for",
		name = "Generic for-loop"
	},{
		t"for (", i(1), t";", i(2), t";", i(3), t({") {", "	"}),
		i(0),
		t({"","}"})
	}),
	s({
		trig = "forc",
		name = "Array traversing for-loop"
	},{
		t"for (", i(1,"size_t"),t" ", i(2,"i"), t" = ", i(3, "0"), t"; ", f(dp,{ 2 }), t" < ", i(4, "length"), t"; ", f(dp,{ 2 }), t({"++) {", "	"}),
		i(0),
		t({"", "}"})
	}),
	s({
		trig = "fund",
		name = "Function declaration"
	},{
		i(2, "void"), t" ", i(1, "function"), t"(", i(3, "params"), t");"
	}),
	s({
		trig = "struct",
		name = "Struct Definition"
	},{
		t"struct ",
		i(1,"Name"),
		t({" {","	"}),
		i(0),
		t({"", "}"})
	}),
	s({
		trig = "union",
		name = "Union Definition"
	},{
		t"union ",
		i(1,"Name"),
		t({" {","	"}),
		i(0),
		t({"", "}"})
	}),
	s({
		trig = "printf",
		name = "printf(), snippet"
	},{
		t"printf(\"",
		i(1,"%s"),
		t"\\n\",",
		i(2),
		t");"
	}),
	s({
		trig = "malloc",
		name = "Malloc"
	},{
		t"malloc(sizeof(",
		i(1),
		t"));"
	}),
	s({
		trig = "calloc",
		name = "Calloc"
	},{
		t"( ",
		i(1, "int"),
		t" * ) calloc(",
		i(2, "n"),
		t", sizeof(",
		f(dp,{ 1 }),
		t"));"
	}),
	s({
		trig = "realloc",
		name = "Realloc"
	},{
		t"( ",
		i(1, "int"),
		t" * ) realloc(",
		i(2, "p"),
		t", ",
		i(3,"n"),
		t"*sizeof(",
		f(dp,{ 1 }),
		t"));"
	}),
	s({
		trig = "printv",
		name = "Print a variable"
	},{
		t"printf(\"",
		i(1, "var"),
		t" = %",
		i(2, "d"),
		t"\\n\",",
		f(dp, {1}),
		t");"
	})
}
