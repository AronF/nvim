local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local extras = require("luasnip.extras")

return {
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
		trig = "loremSent",
		name = "Lorem Ipslum Sentence"
	},
	{
		t"Lorem ipsum dolor sit amet, qui minim labore adipisicing minim sint cillum sint consecteur cupidatat."
	}
	),
	s({
		trig = "loremPara",
		name = "Lorem Ipsum Paragraph"
	},{
		t"Lorem ipsum dolor sit amet, officia excepteur ex fugiat reprehenderit enim labore culpa sint ad nisi Lorem pariatur mollit ex esse exercitation amet. Nisi anim cupidatat excepteur officia. Reprehenderit nostrud nostrud ipsum Lorem est aliquip amet voluptate voluptate dolor minim nulla est proident. Nostrud officia pariatur ut officia. Sit irure elit esse ea nulla sunt ex occaecat reprehenderit commodo officia dolor Lorem duis laboris cupidatat officia voluptate. Culpa proident adipisicing id nulla nisi laboris ex in Lorem sunt duis officia eiusmod. Aliqua reprehenderit commodo ex non excepteur duis sunt velit enim. Voluptate laboris sint cupidatat ullamco ut ea consectetur et est culpa et culpa duis."
	}
	),
	s({
		trig = "diso",
		name = "ISO date and time stamp"
	},{
		extras.partial(os.date, "%Y-%m-%dT%H:%M:%S")
	}),
	s({
		trig = "arrow",
		name = "Arrow pointing to the right"
	},{
		t"->"
	})
}
