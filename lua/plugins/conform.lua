local ok, conform = pcall(require, "conform")
if not ok then
  return
end

conform.setup({
  formatters_by_ft = {
    lua = { "stylua" },

    javascript = { "prettierd", "prettier", stop_after_first = true },
    javascriptreact = { "prettierd", "prettier", stop_after_first = true },
    typescript = { "prettierd", "prettier", stop_after_first = true },
    typescriptreact = { "prettierd", "prettier", stop_after_first = true },
    vue = { "prettierd", "prettier", stop_after_first = true },
    svelte = { "prettierd", "prettier", stop_after_first = true },

    html = { "prettierd", "prettier", stop_after_first = true },
    css = { "prettierd", "prettier", stop_after_first = true },
    scss = { "prettierd", "prettier", stop_after_first = true },
    json = { "prettierd", "prettier", stop_after_first = true },
    jsonc = { "prettierd", "prettier", stop_after_first = true },
    yaml = { "prettierd", "prettier", stop_after_first = true },
    markdown = { "prettierd", "prettier", stop_after_first = true },

    python = { "isort", "black" },

    go = { "goimports", "gofmt" },
    rust = { "rustfmt" },
    php = { "php_cs_fixer" },
    sh = { "shfmt" },
    bash = { "shfmt" },
  },

  format_on_save = false,
})

local function format_range()
  local start_pos = vim.fn.getpos("v")
  local end_pos = vim.fn.getpos(".")

  conform.format({
    async = true,
    lsp_fallback = true,
    range = {
      start = { start_pos[2], start_pos[3] },
      ["end"] = { end_pos[2], end_pos[3] },
    },
  })
end

vim.keymap.set("n", "=", function()
  conform.format({
    async = true,
    lsp_fallback = true,
  })
end, {
  noremap = true,
  silent = true,
  desc = "Format file",
})

vim.keymap.set("v", "=", format_range, {
  noremap = true,
  silent = true,
  desc = "Format selection",
})

vim.keymap.set("n", "<leader>=", function()
  conform.format({
    async = true,
    lsp_fallback = true,
  })
end, {
  noremap = true,
  silent = true,
  desc = "Format file",
})
