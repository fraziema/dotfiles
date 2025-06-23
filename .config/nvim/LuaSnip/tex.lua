
local ls = 	require("luasnip")
local s = ls.snippet

return {   
	
	-- ls.snippet( -- foreshortened to s()
	-- 	{	-- if only one string here, it is trig
	-- 		trig = "foo",
	-- 		dscr=" <Describe human-readable snippet info",
	-- 		snippetType="<autosnippet or snippet>" 
	-- 	},
	-- 	{ 
	-- 		t("<replacement text") -- OR 
	-- 		fmta([[ formatted text ]])
	-- 	}
	-- ), 

	ls.snippet( "bg", { t("\\begin{}") }), 
	s( "nd", { t("\\end{}") }), 
} 
