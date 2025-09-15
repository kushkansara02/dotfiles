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
  if #parent.snippet.env.SELECT_RAW > 0 then
    return sn(nil, i(1, parent.snippet.env.SELECT_RAW))
  else -- If SELECT_RAW is empty, return a blank insert node
    return sn(nil, i(1))
  end
end

return {}, {

  s(
    { trig = "eq", dscr = "Expands 'eq' into an equation environment" },
    fmta(
      [[
               \begin{equation*}
                 \begin{split}
                   <>
                 \end{split}
               \end{equation*}
          ]],
      { i(0) }
    ),
    { condition = line_begin }
  ),

  s(
    { trig = "mm" },
    fmta("<>$<>$", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      d(1, get_visual),
    })
  ),
  s(
    { trig = "mc", dscr = "Non inline math environment" },
    fmta("<>$$<>$$", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      d(1, get_visual),
    }),
    { condition = line_begin }
  ),

  s(
    { trig = ";v" },
    fmta([[<>\overrightarrow{<>}]], {
      f(function(_, snip)
        return snip.captures[1]
      end),
      d(1, get_visual),
    })
  ),

  s(
    { trig = "ff" },
    fmta([[<>\frac{<>}{<>}]], {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
      i(2),
    })
  ),

  s(
    { trig = ";sm" },
    fmta([[<>\sum_{<>}^{<>}<>]], {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
      i(2),
      i(0),
    })
  ),

  s(
    { trig = "bbr" },
    fmta([[<>\left(<>\right)<>]], {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
      i(0),
    })
  ),

  s({ trig = ";c", snippetType = "autosnippet" }, {
    t("$\\rightarrow$"),
  }),

  s(
    { trig = "cbr" },
    fmta([[<>\{<>\}<>]], {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
      i(0),
    })
  ),

  s(
    { trig = "tn" },
    fmta([[<>\int_{<>}^{<>}<>]], {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
      i(2),
      i(0),
    })
  ),

  s(
    { trig = ";u" },
    fmta([[<>u_{-1}(<>)<>]], {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
      i(0),
    })
  ),

  s(
    { trig = ";h" },
    fmta([[<>\hat{<>}<>]], {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
      i(0),
    })
  ),

  s(
    { trig = "ee" },
    fmta([[<>e^{<>}<>]], {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
      i(0),
    })
  ),

  s(
    { trig = ";f" },
    fmta([[<>\mathscr{F} \{ <> \}<>]], {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
      i(0),
    })
  ),

  s(
    { trig = ";l" },
    fmta([[<>\mathscr{L} \{ <> \}<>]], {
      f(function(_, snip)
        return snip.captures[1]
      end),
      i(1),
      i(0),
    })
  ),

  s({ trig = ";nf", snippetType = "autosnippet" }, {
    t("\\infty"),
  }),

  s({ trig = ";nn", snippetType = "autosnippet" }, {
    t("-\\infty"),
  }),
}
