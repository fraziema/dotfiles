local ls = 	require("luasnip")
local s = ls.snippet
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt 
local fmta = require("luasnip.extras.fmt").fmta 

local get_visual = function(args, parent)   
	if (#parent.snippet.env.LS_SELECT_RAW > 0) then     
		return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))   
	else  -- If LS_SELECT_RAW is empty, return a blank insert node     
		return sn(nil, i(1))   
	end 
end

-- ===============================================
return {   

		-- ls.snippet( -- foreshortened to s()
		-- 	{	-- if only one string here, it is trig
			-- 		trig = "foo",
			-- 		dscr=" <Describe human-readable snippet info",
			-- 		snippetType="<autosnippet or snippet>" 
			-- 	},
			-- 	{	-- either t("") or fmt([[multiline string ]])
					-- 	or fmta([[ ]]) for inserted code

		s({trig=' ;;',snippetType="autosnippet"},fmta("{<>}", d(1,get_visual))), 
		s({trig=' mm',snippetType="autosnippet"},fmta("$<>$", d(1,get_visual))), 
		s('i',t("\\item ")), 
		s('g',fmta("\\includegraphics[<>]{<>} ",{i(1),i(2)})), 
		s('it',t("itemize")), 
		s('en',t("enumerate")), 
		s('eq',t("equation")), 
		s('c',t("center")), 
		s('t',t("tikzpicture")), 
		s('tb', fmta([[\textbf{<>}]], {d(1, get_visual)})), 
		s('ti', fmta([[\textit{<>}]], {d(1, get_visual)})), 
		s('ff',fmta([[\frac{<>}{<>}]], {i(1),i(2)})),

--formatting for multiline environments
s('beg',
fmta([[\begin{<>}     
<>     
\end{<>}]],
{ i(1), i(0), rep(1) })
),

} 
	
