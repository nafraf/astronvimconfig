return {
      "rebelot/heirline.nvim",
      opts = function(_, opts)
            local status = {
                  astro = require "astronvim.utils.status",
            }
            -- the first element of the configuration table is the statusline
            opts.statusline = {
                  hl = { fg = "fg", bg = "bg" },
                  -- add the mode text
                  status.astro.component.mode { mode_text = { padding = { left = 1, right = 1 } } },
                  status.astro.component.git_branch(),
                  status.astro.component.file_info { filetype = {}, filename = false, file_modified = false },
                  status.astro.component.git_diff(),
                  status.astro.component.diagnostics(),
                  status.astro.component.fill(),
                  status.astro.component.cmd_info(),
                  status.astro.component.fill(),
                  status.astro.component.lsp(),
                  status.astro.component.treesitter(),
                  status.astro.component.nav(),
                  -- remove the 2nd mode indicator on the right
            }

            -- return the final configuration table
            return opts
      end,
}
