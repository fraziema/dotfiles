local ls = 	require("luasnip")
local s = ls.snippet
local fmt = require("luasnip.extras.fmt").fmt 
local fmta = require("luasnip.extras.fmt").fmta 

return {   

		-- ls.snippet( -- foreshortened to s()
		-- 	{	-- if only one string here, it is trig
			-- 		trig = "foo",
			-- 		dscr=" <Describe human-readable snippet info",
			-- 		snippetType="<autosnippet or snippet>" 
			-- 	},
			-- 	{ 
		s('beg',
		
			fmta([[
			\begin{<>}     
				<>     
			\end{<>}     ]],
			{ i(1), i(0), rep(1) }     )
		
		),

	} 
