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

--formatting for multiline environments
s('beg',
fmta([[\begin{<>}     
	<>     
\end{<>}]],
{ i(1), i(0), rep(1) })
),

s('over',
fmta([[\begin{overlayarea}{<>}{<>}     
	<>     
\end{overlayarea}]],
{ i(1), i(2), i(0) })
),


		-- autosnippets
		s({trig=';;',snippetType="autosnippet"},fmta("{<>}", d(1,get_visual))), 
		s({trig=';m',snippetType="autosnippet"},fmta("$<>$", d(1,get_visual))), 
		s({trig=';,',snippetType="autosnippet"},fmta("$$<>$$", d(1,get_visual))), 
		s({trig='===',snippetType="autosnippet"},t("&=&")), 

		-- environments
		s('g',fmta("\\includegraphics[width=<>\\textwidth]{<>} ",{i(1),i(2)})), 
		s('it',t("itemize")), 
		s('en',t("enumerate")), 
		s('i',t("\\item ")), 
		s('eq',t("equation")), 
		s('eqna',t("eqnarray")), 
		s('c',t("center")), 
		s('sec',fmta("\\section{<>}", {i(1)})), 
		s('sub',fmta("\\subsection{<>}", {i(1)})), 
		s('ssub',fmta("\\subsubsection{<>}", {i(1)})), 
		s('t',t("tikzpicture")), 
		s('tb', fmta([[\textbf{<>}]], {d(1, get_visual)})), 
		s('ti', fmta([[\textit{<>}]], {d(1, get_visual)})), 
		s('tt', fmta([[\textrm{<>}]], {d(1, get_visual)})), 

		-- commands (math)
		s('box',fmta([[\boxed{<>}]], {i(1)})),
		s('fn',fmta([[\footnote{<>}]], {i(1)})),
		s('abs',fmta("|<>|",i(1))),
		s('ff',fmta([[\frac{<>}{<>}]], {i(1),i(2)})),
		s('si',fmta("\\qty{<>}{<>} ",{i(1),i(2)})), 
		s('q',fmta("\\qty{<>}{<>} ",{i(1),i(2)})), 
		s('ra',t("\\rightarrow ")), 
		s('app',t("\\approx ")), 

		s('ans',t("\\answer ")), 
		
		-- s('tf',t([[
		-- \begin{choices}
		-- 	\choice True
		-- 	\choice False
		-- 	\end{choices}
		-- 	]])),

		-- s('otf',t([[
		--  \begin{oneparchoices}
		--   \choice True
		--   \choice False
		--  \end{oneparchoices}
		--  ]])),

	}		
