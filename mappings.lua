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
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>o"] = { "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header" },

    --search stuff
    ["<C-d>"] = { "<C-d>zz" }, --scroll half page down but keep cursor in the middle
    ["<C-u>"] = { "<C-u>zz" }, --scroll half page up but keep cursor in the middle
    ["<C-f>"] = { "<C-f>zz" }, --scroll full page down but keep cursor in the middle
    ["<C-b>"] = { "<C-b>zz" }, --scroll full page up but keep cursor in the middle
    ["n"] = { "nzzzv" },       -- when searching (using "/") keep search term in the middle of the screen
    ["N"] = { "Nzzzv" },       -- same thing but backwards

    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
