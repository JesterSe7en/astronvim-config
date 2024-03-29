return {
  {
    "Civitasv/cmake-tools.nvim",

    config = function()
      require("cmake-tools").setup {
        cmake_command = "cmake",
        cmake_build_directory = "",
        cmake_build_directory_prefix = "cmake_build_", -- when cmake_build_directory is "", this option will be activated
        cmake_generate_options = { "-D", "CMAKE_EXPORT_COMPILE_COMMANDS=1" },
        cmake_regenerate_on_save = true, -- Saves CMakeLists.txt file only if mofified.
        cmake_soft_link_compile_commands = true, -- if softlink compile commands json file
        cmake_compile_commands_from_lsp = false, -- automatically set compile commands location using lsp
        cmake_build_options = {},
        cmake_console_size = 10, -- cmake output window height
        cmake_console_position = "belowright", -- "belowright", "aboveleft", ...
        cmake_show_console = "always", -- "always", "only_on_error"
        cmake_kits_path = nil, -- global cmake kits path
        cmake_dap_configuration = { name = "cpp", type = "codelldb", request = "launch" }, -- dap configuration, optional
        cmake_variants_message = {
          short = { show = true },
          long = { show = true, max_length = 40 },
        },
      }
    end,
  },
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
