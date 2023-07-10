-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- harpoon
    ["<C-e>"]     = { require("harpoon.ui").toggle_quick_menu, desc = "harpoon menu" },
    ["<leader>a"] = { require("harpoon.mark").add_file, desc = "harpoon mark"},
    -- ["C-h"]       = { 
    --   function() 
    --     require("harpoon.ui").nav_file(1)
    --   end,
    --   desc = "Go to file 1"
    -- },
    -- ["C-t"]       = { 
    --   function() 
    --     require("harpoon.ui").nav_file(2)
    --   end,
    --   desc = "Go to file 2"
    -- },
    -- Center on window after movement
    ["<C-d>"] = {"<C-d>zz", desc = "Next Paragraph and center"},
    ["<C-u>"] = {"<C-u>zz", desc = "Prev Paragraph and center"},
    ["n"]     = {"nzzzv", desc = "Next result and center"},
    ["N"]     = {"Nzzzv", desc = "Prev result and center"},
 },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
