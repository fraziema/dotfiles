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
					-- 	include i(num, get_visual) for putting in selected text
					-- 	include i(num, "label" to label input slot

--formatting for multiline environments
--generic
s('beg',
fmta([[\begin{<>}     
	<>     
\end{<>}]],
{ i(1), i(0), rep(1) })
),
 
-- center
s('c',
fmta([[\begin{center}     
	<>     
\end{center}]],
{ i(0) })
),

-- flushright
s('rr',
fmta([[\begin{flushright}     
	<>     
\end{flushright}]],
{ i(0) })
),


-- lists
s('enum',
fmta([[\begin{enumerate}     
	<>     
\end{enumerate}]],
{ i(0) })
),

s('item',
fmta([[\begin{itemize}     
	<>     
\end{itemize}]],
{ i(0) })
),


--tikzpicture
s('tikz',
fmta([[\begin{tikzpicture}     
	<>     
\end{tikzpicture}]],
{ i(1)})
),

-- list of equations
s('eq',
fmta([[\begin{gather*}     
	<>     
\end{gather*}]],
{ i(1)})
),

-- array of equations
s('ea',
fmta([[\begin{align*}     
	<>     
\end{align*}]],
{ i(1)})
),


-- beamer frames
s('frame',
fmta([[\begin{frame}{<>}     
	<>     
\end{frame}]],
{ i(1, "title"),  i(0) })
),

s('only',fmta([[\only<<<>>>
{
  <>
}
]], {i(2, "slide num"),d(1,get_visual)})), 

s('unc',fmta([[\uncover<<<>>>
{
  <>
}
]], {i(2, "slide num"),d(1,get_visual)})), 

s('over',
fmta([[\begin{overlayarea}{<>\textwidth}{<>\textheight}     
	<>     
\end{overlayarea}]],
{ i(2, "width"), i(3, "height"), d(1, get_visual) })
),

s('bl',
fmta([[\begin{block}{<>}     
	<>     
\end{block}]],
{ i(1, "title"),  i(0) })
),
		-- autosnippets
		s({trig=';;',snippetType="autosnippet"},fmta("{<>}", d(1,get_visual))), 
		s({trig=';m',snippetType="autosnippet"},fmta("$<>$", d(1,get_visual))), 
		s({trig=';,',snippetType="autosnippet"},fmta("$$<>$$", d(1,get_visual))), 
		s({trig='===',snippetType="autosnippet"},t("&=&")), 

		-- environments

		s('g',fmta("\\includegraphics[width=<>\\textwidth]{<>} ",{i(1),i(2)})), 
		s('i',t("\\item ")), 
		s('sec',fmta("\\section{<>}", {i(1)})), 
		s('sub',fmta("\\subsection{<>}", {i(1)})), 
		s('ssub',fmta("\\subsubsection{<>}", {i(1)})), 
		s('bf', fmta([[{\bf <>}]], {d(1, get_visual)})), 
		s('it', fmta([[{\it <>}]], {d(1, get_visual)})), 
		s('tt', fmta([[\textrm{<>}]], {d(1, get_visual)})), 

		-- commands (math)
		s('box',fmta([[\boxed{<>}]], {i(1)})),
		s('fn',fmta([[\footnote{<>}]], {i(1)})),
		s('abs',fmta("|<>|",i(1))),
		s('ff',fmta([[\frac{<>}{<>}]], {i(1),i(2)})),
		s('q',fmta("\\qty{<>}{<>} ",{i(1),i(2)})), 
		s('ra',t("\\rightarrow ")), 
		s('lra',t("\\Longrightarrow ")), 
		s('app',t("\\approx ")), 

		s('ans',t("\\answer ")), 
		
}		
