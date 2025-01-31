-- plugins made by @Pocco81 =)
--
local M = {}

M.config = function()
    local true_zen = require("true-zen")

    true_zen.setup(
        {
            true_false_commands = false,
            cursor_by_mode = false,
            before_minimalist_mode_shown = true,
            before_minimalist_mode_hidden = true,
            after_minimalist_mode_shown = true,
            after_minimalist_mode_hidden = true,
            bottom = {
                hidden_laststatus = 0,
                hidden_ruler = false,
                hidden_showmode = false,
                hidden_showcmd = false,
                hidden_cmdheight = 1,
                shown_laststatus = 2,
                shown_ruler = true,
                shown_showmode = false,
                shown_showcmd = false,
                shown_cmdheight = 1
            },
            top = {
                hidden_showtabline = 0,
                shown_showtabline = 2
            },
            left = {
                hidden_number = false,
                hidden_relativenumber = false,
                hidden_signcolumn = "no",
                shown_number = true,
                shown_relativenumber = false,
                shown_signcolumn = "yes"
            },
            ataraxis = {
                just_do_it_for_me = false,
                left_padding = 37,
                right_padding = 37,
                top_padding = 2,
                bottom_padding = 2,
                custome_bg = "#1e222a"
            },
            integrations = {
                integration_galaxyline = true
            }
        }
    )
end

-- autosave.nvim plugin disabled by default
M.autoSave = function()
    local autosave = require("autosave")

    autosave.setup(
        {
            enabled = vim.g.auto_save, -- takes boolean value from init.lua
            execution_message = "autosaved at : " .. vim.fn.strftime("%H:%M:%S"),
            events = {"InsertLeave", "TextChanged"},
            conditions = {
                exists = true,
                filetype_is_not = {},
                modifiable = true
            },
            write_all_buffers = true,
            on_off_commands = true,
            clean_command_line_interval = 2500
        }
    )
end

return M
