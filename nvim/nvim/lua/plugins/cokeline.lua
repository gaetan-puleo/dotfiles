local is_picking_focus = require('cokeline/mappings').is_picking_focus
local is_picking_close = require('cokeline/mappings').is_picking_close
local get_hex = require('cokeline/utils').get_hex

local red = vim.g.terminal_color_1
local yellow = vim.g.terminal_color_3
local map = vim.api.nvim_set_keymap
local util = require("tokyonight.util")
map('n', '<Leader>p', '<Plug>(cokeline-pick-focus)', { silent = true })

local dark = '#101010'

local components = {
  space = {
    text = ' ',
    truncation = { priority = 1 }
  },

  two_spaces = {
    text = '  ',
    truncation = { priority = 1 },
  },

  separator = {
    text = function(buffer)
      return buffer.index ~= 1 and '▏' or ''
    end,
    truncation = { priority = 1 }
  },

  devicon = {
    text = function(buffer)
      return
        (mappings.is_picking_focus() or mappings.is_picking_close())
          and buffer.pick_letter .. ' '
           or buffer.devicon.icon
    end,
    hl = {
      fg = function(buffer)
        return
          (mappings.is_picking_focus() and yellow)
          or (mappings.is_picking_close() and red)
          or buffer.devicon.color
      end,
      style = function(_)
        return
          (mappings.is_picking_focus() or mappings.is_picking_close())
          and 'italic,bold'
           or nil
      end,
    },
    truncation = { priority = 1 }
  },

  index = {
    text = function(buffer)
      return buffer.index .. ': '
    end,
    truncation = { priority = 1 }
  },

  unique_prefix = {
    text = function(buffer)
      return buffer.unique_prefix
    end,
    hl = {
      fg = comments_fg,
      style = 'italic',
    },
    truncation = {
      priority = 3,
      direction = 'left',
    },
  },

  filename = {
    text = function(buffer)
      return buffer.filename
    end,
    hl = {
      style = function(buffer)
        return
          ((buffer.is_focused and buffer.diagnostics.errors ~= 0)
            and 'bold,underline')
          or (buffer.is_focused and 'bold')
          or (buffer.diagnostics.errors ~= 0 and 'underline')
          or nil
      end
    },
    truncation = {
      priority = 2,
      direction = 'left',
    },
  },

  diagnostics = {
    text = function(buffer)
      return
        (buffer.diagnostics.errors ~= 0 and '  ' .. buffer.diagnostics.errors)
        or (buffer.diagnostics.warnings ~= 0 and '  ' .. buffer.diagnostics.warnings)
        or ''
    end,
    hl = {
      fg = function(buffer)
        return
          (buffer.diagnostics.errors ~= 0 and errors_fg)
          or (buffer.diagnostics.warnings ~= 0 and warnings_fg)
          or nil
      end,
    },
    truncation = { priority = 1 },
  },

  close_or_unsaved = {
    text = function(buffer)
      return buffer.is_modified and '●' or ''
    end,
    hl = {
      fg = function(buffer)
        return buffer.is_modified and green or nil
      end
    },
    delete_buffer_on_left_click = true,
    truncation = { priority = 1 },
  },
}
require('cokeline').setup({
  default_hl = {
    focused = {
      fg = get_hex('Normal', 'fg'),
      bg = get_hex('Normal', 'bg'),
    },
    unfocused = {
      fg = get_hex('Comment', 'fg'),
      bg = '#101010',
    },
  },
	 rendering = {
    left_sidebar = {
      filetype = 'NvimTree',
      components = {
        {
          text = '  NvimTree',
          hl = {
            fg = yellow,
            bg = get_hex('NvimTreeNormal', 'bg'),
            style = 'bold'
          }
        },
      }
    },
  },
  components = {
	   components.space,
     components.separator,
	   components.space,
		{
      text = function(buffer)
        return
          (is_picking_focus() or is_picking_close())
          and buffer.pick_letter .. ' '
           or buffer.devicon.icon
      end,
      hl = {
        fg = function(buffer)
          return
            (is_picking_focus() and yellow)
            or (is_picking_close() and red)
            or buffer.devicon.color
        end,
        style = function(_)
          return
            (is_picking_focus() or is_picking_close())
            and 'italic,bold'
             or nil
        end,
      },
    },

	   components.index,
	   components.unique_prefix,
	  components.filename,
	  components.space,
    components.diagnostics,
    components.two_spaces,
   	components.close_or_unsaved,
    {
      text = '  ',
    },
 },
})
