local ok, colors = pcall(require, "nvim-highlight-colors")
if not ok then
  return
end

colors.setup({
  -- if u want a square besides the color change "background" to "virtual"
  render = "background",

  enable_named_colors = true,
  enable_tailwind = true,
  enable_var_usage = true,

  virtual_symbol = "■",

  exclude_filetypes = {
    "lazy",
    "mason",
    "help",
  },
})
