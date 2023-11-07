vim.g.dap_virtual_text = true
vim.o.mouse = ""
vim.o.relativenumber = true
vim.wo.wrap = false
vim.o.clipboard = ""

local enable_providers = {
  "python3_provider",
  "node_provider",
}

for _, plugin in pairs(enable_providers) do
  vim.g["loaded_" .. plugin] = nil
  vim.cmd("runtime " .. plugin)
end

if vim.g.neovide then
  -- Helper function for transparency formatting
  Transparent = function (ntransparency)
    ntransparency = ntransparency or 0.9
    vim.g.neovide_transparency = 0
    vim.g.transparency = ntransparency
    local alpha = string.format("%x", math.floor(255*ntransparency))
    vim.g.neovide_background_color = "#0f1117" .. alpha
  end

  Transparent()
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_fullscreen = true
end
