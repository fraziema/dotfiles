
local ls = 	require("luasnip")
local s = ls.snippet

<<<<<<< HEAD
local ls = require("luasnip") 
local s = ls.snippet 
local sn = ls.snippet_node 
local isn = ls.indent_snippet_node 
local t = ls.text_node 
local i = ls.insert_node 
local f = ls.function_node 
local c = ls.choice_node 
local d = ls.dynamic_node 
local r = ls.restore_node 
local events = require("luasnip.util.events") 
local ai = require("luasnip.nodes.absolute_indexer") 
local extras = require("luasnip.extras") 
local l = extras.lambda 
local rep = extras.rep 
local p = extras.partial 
local m = extras.match 
local n = extras.nonempty 
local dl = extras.dynamic_lambda 
local fmt = require("luasnip.extras.fmt").fmt 
local fmta = require("luasnip.extras.fmt").fmta 
local conds = require("luasnip.extras.expand_conditions") 
local postfix = require("luasnip.extras.postfix").postfix 
local types = require("luasnip.util.types") 
local parse = require("luasnip.util.parser").parse_snippet 
local ms = ls.multi_snippet 
local autosnippet = ls.extend_decorator.apply(s, { snippetType = "autosnippet" }) 

return {   

	-- ls.snippet( -- foreshortened to s()
		-- 	{	-- if only one string here, it is trig
			-- 		trig = "foo",
			-- 		dscr=" <Describe human-readable snippet info",
			-- 		snippetType="<autosnippet or snippet>" 
			-- 	},
			-- 	{ 
=======
return {   
	
	-- ls.snippet( -- foreshortened to s()
	-- 	{	-- if only one string here, it is trig
	-- 		trig = "foo",
	-- 		dscr=" <Describe human-readable snippet info",
	-- 		snippetType="<autosnippet or snippet>" 
	-- 	},
	-- 	{ 
>>>>>>> bd4e1725eedac097a0cada265d26c45208126b62
	-- 		t("<replacement text") -- OR 
	-- 		fmta([[ formatted text ]])
	-- 	}
	-- ), 

<<<<<<< HEAD
		s('beg',
		
			fmta([[
			\begin{<>}     
				<>     
			\end{<>}     ]],
			{ i(1), i(0), rep(1) }     )
		
		),

	} 
=======
	ls.snippet( "bg", { t("\\begin{}") }), 
	s( "nd", { t("\\end{}") }), 
} 
>>>>>>> bd4e1725eedac097a0cada265d26c45208126b62
