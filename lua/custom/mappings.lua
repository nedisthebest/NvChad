local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
    ["<C-d>"] = { "<C-d>zz", "move down half page and center"},
    ["<C-u>"] = { "<C-u>zz", "move up half page and center"},
    ["<leader>y"] = { "\"+y", "yank to system clipboard"},
    ["<leader>Y"] = {"\"+Y", "yank from cursor to end of line to system clipboard"},
    ["<leader>p"] = {"\"+p", "paste from system clipboard"}
  },
  v = {
    ["<leader>y"] = { "\"+y", "yank to system clipboard"},
  },
}

M.disabled = {
    ["<C-s>"] = "",
    ["<C-c>"] = "",
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Run or continue the debugger"
    }
  },
}

if vim.g.neovide then
  M.neovide = {
    n = {
      ["<C-=>"] = {"<cmd> lua vim.g.neovide_scale_factor = math.min(vim.g.neovide_scale_factor + 0.1, 2.0) <CR>", "Zoom In"},
      ["<C-->"] = {"<cmd> lua vim.g.neovide_scale_factor = math.max(vim.g.neovide_scale_factor - 0.1, 0.5) <CR>", "Zoom Out"},
      ["<C-+>"] = {"<cmd> lua Transparent(math.min((vim.g.transparency + 0.05), 1.0)) <CR>", "increase opacity"},
      ["<C-_>"] = {"<cmd> lua Transparent(math.max((vim.g.transparency - 0.05), 0.0)) <CR>", "decrease opacity"},
      ["<C-0>"] = {"<cmd> lua vim.g.neovide_scale_factor = 1<CR>", "Reset Zoom"},
      ["<C-)>"] = {"<cmd> lua Transparent() <CR>", "reset opacity"},
    }
  }
end

return M
