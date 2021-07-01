local ls = require'luasnip'
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node


-- react
local ex =  s({
		trig = 'ex', 
		name = 'component file', 
		dscr = 'Create a new file with a component'
	}, 
	{
	-- start component
		t({"import React from 'react'",
			"",
			"export default function Component (props) {",
			"\t return (",
			"\t\t<div>hello<div>",
			"\t)",
			"}"
		}),
	})

local useS = s({trig = 'useS'}, {
	t('const ['),
	i(1,"state"), 
	t(','),
	i(2,"setState"),
	t('] = useState('),
	i(3,'null'),
	t(')'),
})


local useE = s({trig = 'useE'}, {
	-- use effect start
	t({
		'useEffect(() => {',
		"\t"
	}),
	-- insert text
	i(1,''),
	--- new line and end
	t({
		"",
		'})'
	})
})

local js = {
	ex,
	useS,
	useE,
}

local function expandTag (tagName)
	return 	s({
		trig = tagName, --match a word
		-- trig = "%a+", --match a word
		name = 'Expand ' ..tagName,
		dscr = '<' .. tagName .. '></' .. tagName .. '>',
		-- regTrig = true,

	}, {t('<' .. tagName .. '>'),i(1,''),t('</' .. tagName ..'>')})
end

local htmlTags = {
	'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 
	'span', 'strong', 'em', 
	'p', 'li', 'ul', 'ol',
	'header', 'footer', 'section', 'aside', 'nav', 
	'form', 'label', 'button', 'legend', 'fieldset', 'textarea', 
	'pre', 'code'
}
-- Emmet like snippet
local emmet = {
	s('!', {
		t({
				'<!DOCTYPE html>',
			'<html lang="en">',
			'<head>',
			'\t<meta charset="UTF-8">',
			'\t<meta http-equiv="X-UA-Compatible" content="IE=edge">',
			'\t<meta name="viewport" content="width=device-width, initial-scale=1.0">',
			'\t<title>Document</title>',
			'</head>',
			'<body>',
			'',
		}),
		i(1, "\t"),
		t({
			'',
			'</body>',
			'</html>',
		})
	}),
	expandTag('div'),
	expandTag('p'),
	expandTag('h1'),
	expandTag('h2'),
	expandTag('h3'),
	expandTag('h4'),
	expandTag('h5'),
	expandTag('h6'),
	expandTag('span'),
	expandTag('section'),
	expandTag('header'),
	expandTag('footer'),
	expandTag('article'),
	expandTag('ul'),
	expandTag('ol'),
	expandTag('li'),
	expandTag('strong'),
	expandTag('em'),
}
ls.snippets = {
	html = { unpack(emmet)},
	javascriptreact = { unpack(js), unpack(emmet)}, 
	javascript = { unpack(js), unpack(emmet)},
	typescript = { unpack(js), unpack(emmet)},
	typescriptreact = { unpack(js), unpack(emmet)},
}
