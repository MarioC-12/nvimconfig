-- Update this path
local mason_registry = require('mason-registry')
local codelldb = mason_registry.get_package('codelldb')
local extension_path = codelldb:get_install_path()
print(extension_path)
local codelldb_path = extension_path .. '/codelldb'
local liblldb_path = extension_path .. '/extension/lldb/lib/liblldb.so'

local rt = require("rust-tools")

rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
  dap = {
      adapter = require('rust-tools.dap').get_codelldb_adapter(codelldb_path, liblldb_path)
  }
})
