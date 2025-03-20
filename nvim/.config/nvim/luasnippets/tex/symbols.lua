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

  s({ trig = ";a", snippetType = "autosnippet" }, {
    t("\\alpha"),
  }),

  s({ trig = ";b", snippetType = "autosnippet" }, {
    t("\\beta"),
  }),

  s({ trig = ";g", snippetType = "autosnippet" }, {
    t("\\gamma"),
  }),

  s({ trig = ";m", snippetType = "autosnippet" }, {
    t("\\mu"),
  }),

  s({ trig = ";d", snippetType = "autosnippet" }, {
    t("\\delta"),
  }),

  s({ trig = ";t", snippetType = "autosnippet" }, {
    t("\\tau"),
  }),

  s({ trig = ";w", snippetType = "autosnippet" }, {
    t("\\omega"),
  }),

  s({ trig = ";D", snippetType = "autosnippet" }, {
    t("\\Delta"),
  }),

  s({ trig = ";r", snippetType = "autosnippet" }, {
    t("\\rho"),
  }),

  s({ trig = ";i", snippetType = "autosnippet" }, {
    t("\\pi"),
  }),

  s({ trig = ";x", snippetType = "autosnippet" }, {
    t("\\oplus"),
  }),
}
