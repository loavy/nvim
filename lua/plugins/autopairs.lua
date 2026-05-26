local ok, autopairs = pcall(require, "nvim-autopairs")
if not ok then
  return
end

autopairs.setup({
  check_ts = true,
  map_cr = true,
  map_bs = true,
  map_c_h = false,
  map_c_w = false,

  enable_check_bracket_line = true,
  ignored_next_char = "[%w%.]",
  fast_wrap = {},
})

local cmp_ok, cmp = pcall(require, "cmp")
if cmp_ok then
  local cmp_autopairs = require("nvim-autopairs.completion.cmp")
  cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
end
