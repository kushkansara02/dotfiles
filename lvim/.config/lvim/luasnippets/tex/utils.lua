local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep
local line_begin = require("luasnip.extras.expand_conditions").line_begin

-- functions
local get_visual = function(args, parent)
  if (#parent.snippet.env.SELECT_RAW > 0) then
    return sn(nil, i(1, parent.snippet.env.SELECT_RAW))
  else -- If SELECT_RAW is empty, return a blank insert node
    return sn(nil, i(1))
  end
end

return {}, {

      s({ trig = "h1", dscr = "Top-level section" },
        fmta(
          [[
            \section{<>}

            <>
          ]],
          { i(1), i(0) }
        ),
        { condition = line_begin } -- set condition in the `opts` table
      ),

      s({ trig = "h2", dscr = "Mid-level section" },
        fmta(
          [[
            \subsection{<>}

            <>
          ]],
          { i(1), i(0) }
        ),
        { condition = line_begin } -- set condition in the `opts` table
      ),

      s({ trig = "h3", dscr = "Low-level section" },
        fmta(
          [[
            \subsubsection{<>}

            <>
          ]],
          { i(1), i(0) }
        ),
        { condition = line_begin } -- set condition in the `opts` table
      ),

      s({ trig = "new", dscr = "A generic new environment" },
        fmta(
          [[
              \begin{<>}
                <>
              \end{<>}
            ]],
          {
            i(1),
            i(0),
            rep(1),
          }
        ),
        { condition = line_begin }
      ),

      s({ trig = "itm", dscr = "Item list" },
        fmta(
          [[
            \begin{itemize}
              \item <>
            \end{itemize}
          ]],
          { i(0) }
        ),
        { condition = line_begin }
      ),

      s({ trig = "ie", dscr = "Item" },
        fmta(
          [[\item <>]],
          { i(0) }
        )
      ),

      s({ trig = "ibe", dscr = "Item with bold starting" },
        fmta(
          [[\item \textbf{<>}: ]],
          { i(1, "item name") }
        )
      ),

      s({ trig = "hre", dscr = "The hyperref package's href{}{} command (for url links)" },
        fmta(
          [[\href{<>}{<>}]],
          {
            i(1, "url"),
            i(2, "display name"),
          }
        )
      ),

      s({ trig = "tii", dscr = "Expands 'tii' into LaTeX's textit{} command." },
        fmta("\\textit{<>}",
          {
            d(1, get_visual),
          }
        )
      ),

      s({ trig = "bld", dscr = "Expands 'bld' into LaTeX's textbf{} command." },
        fmta("\\textbf{<>}",
          {
            d(1, get_visual),
          }
        )
      ),

      s({ trig = "img", dscr = "Add image" },
        fmta(
          [[\includegraphics[width=\textwidth]{<>}\\]],
          { i(1, "image name") }
        )
      ),

    }
