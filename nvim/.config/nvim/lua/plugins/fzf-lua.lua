return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    -- Remove the `--no-scrollbar` option if present
    if opts.fzf_opts then
      opts.fzf_opts["--no-scrollbar"] = nil
    end
    -- Set scrollbar to false with winopts for compatibility
    opts.winopts = opts.winopts or {}
    opts.winopts.preview = opts.winopts.preview or {}
    opts.winopts.preview.scrollbar = false
  end,
}
