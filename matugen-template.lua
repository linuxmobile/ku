local M = {}

function M.setup()
  local colors = {
    base00 = '{{colors.surface.default.hex}}',
    base01 = '{{colors.surface_container.default.hex}}',
    base02 = '{{colors.surface_container_high.default.hex}}',
    base03 = '{{colors.outline.default.hex}}',
    base04 = '{{colors.on_surface_variant.default.hex}}',
    base05 = '{{colors.on_surface.default.hex}}',
    base06 = '{{colors.on_surface.default.hex}}',
    base07 = '{{colors.on_background.default.hex}}',
    base08 = '{{colors.error.default.hex}}',
    base09 = '{{colors.tertiary.default.hex}}',
    base0A = '{{colors.secondary.default.hex}}',
    base0B = '{{colors.primary.default.hex}}',
    base0C = '{{colors.tertiary_fixed_dim.default.hex}}',
    base0D = '{{colors.primary_fixed_dim.default.hex}}',
    base0E = '{{colors.secondary_fixed_dim.default.hex}}',
    base0F = '{{colors.error_container.default.hex}}',
  }

  require('base16-colorscheme').setup(colors)

  local set_hl = function(group, opts)
    opts.default = false
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- Transparency and Core UI
  set_hl('Normal', { bg = 'NONE', fg = colors.base05 })
  set_hl('NormalNC', { bg = 'NONE', fg = colors.base05 })
  set_hl('SignColumn', { bg = 'NONE' })
  set_hl('NormalFloat', { bg = colors.base00 })
  set_hl('FloatBorder', { fg = colors.base03, bg = colors.base00 })
  set_hl('EndOfBuffer', { fg = colors.base01, bg = 'NONE' })
  
  -- Line numbers and Cursor
  set_hl('LineNr', { fg = colors.base03, bg = 'NONE' })
  set_hl('CursorLine', { bg = colors.base01 })
  set_hl('CursorLineNr', { fg = colors.base0D, bold = true, bg = 'NONE' })
  
  -- Telescope
  set_hl('TelescopeNormal', { bg = colors.base00 })
  set_hl('TelescopeBorder', { fg = colors.base03, bg = colors.base00 })
  set_hl('TelescopePromptNormal', { bg = colors.base01 })
  set_hl('TelescopePromptBorder', { fg = colors.base03, bg = colors.base01 })
  set_hl('TelescopeResultsNormal', { bg = colors.base00 })
  set_hl('TelescopeResultsBorder', { fg = colors.base03, bg = colors.base00 })
  set_hl('TelescopePreviewNormal', { bg = colors.base00 })
  set_hl('TelescopePreviewBorder', { fg = colors.base03, bg = colors.base00 })
  set_hl('TelescopeSelection', { bg = colors.base02, bold = true })

  -- Blink CMP
  set_hl('BlinkCmpMenu', { bg = colors.base00, fg = colors.base05 })
  set_hl('BlinkCmpMenuBorder', { fg = colors.base03, bg = colors.base00 })
  set_hl('BlinkCmpMenuSelection', { bg = colors.base02, bold = true })
  set_hl('BlinkCmpLabel', { fg = colors.base05 })
  set_hl('BlinkCmpLabelDeprecated', { fg = colors.base04, strikethrough = true })
  set_hl('BlinkCmpLabelMatch', { fg = colors.base0D, bold = true })
  set_hl('BlinkCmpKind', { fg = colors.base0E })
  
  -- GitSigns
  set_hl('GitSignsAdd', { fg = colors.base0B, bg = 'NONE' })
  set_hl('GitSignsChange', { fg = colors.base0D, bg = 'NONE' })
  set_hl('GitSignsDelete', { fg = colors.base08, bg = 'NONE' })
  
  -- Diagnostics
  set_hl('DiagnosticError', { fg = colors.base08 })
  set_hl('DiagnosticWarn', { fg = colors.base0A })
  set_hl('DiagnosticInfo', { fg = colors.base0D })
  set_hl('DiagnosticHint', { fg = colors.base0C })
  set_hl('DiagnosticUnderlineError', { sp = colors.base08, undercurl = true })
  set_hl('DiagnosticUnderlineWarn', { sp = colors.base0A, undercurl = true })
  
  -- Treesitter Context
  set_hl('TreesitterContext', { bg = colors.base01 })
  set_hl('TreesitterContextLineNumber', { fg = colors.base04, bg = colors.base01 })

  -- LazyGit
  set_hl('LazyGitFloat', { bg = colors.base00 })
  set_hl('LazyGitBorder', { fg = colors.base03, bg = colors.base00 })

  -- Noice
  set_hl('NoiceCmdlinePopup', { bg = colors.base01 })
  set_hl('NoiceCmdlinePopupBorder', { fg = colors.base03, bg = colors.base01 })

  -- Notify
  set_hl('NotifyBackground', { bg = colors.base00 })
end

local signal = vim.uv.new_signal()
signal:start(
  'sigusr1',
  vim.schedule_wrap(function()
    package.loaded['matugen'] = nil
    require('matugen').setup()
  end)
)

return M
