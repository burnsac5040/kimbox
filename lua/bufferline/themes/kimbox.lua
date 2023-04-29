local c = require("kimbox.bufferline").colors()

---@class KimboxBufferlineConfig
local kimbox = {
    -- Status background
    fill = {fg = c.magenta, bg = c.dbg},
    background = {fg = c.fg, bg = c.dbg},
    tab = {fg = c.fg, bg = c.dbg},
    tab_selected = {fg = c.fg, bg = c.lbg},
    buffer_visible = {fg = c.magenta, bg = c.lbg},
    buffer_selected = {fg = c.fg, bg = c.lbg, italic = true, bold = true},
    diagnostic = {fg = c.red, bg = c.dbg},
    diagnostic_visible = {fg = c.red, bg = c.lbg},
    diagnostic_selected = {fg = c.red, bg = c.lbg, italic = true, bold = true},
    hint = {fg = c.cyan, bg = c.dbg},
    hint_visible = {fg = c.blue, bg = c.lbg},
    hint_selected = {fg = c.blue, bg = c.lbg, italic = true, bold = true},
    hint_diagnostic = {fg = c.blue, bg = c.dbg},
    hint_diagnostic_visible = {fg = c.blue, bg = c.lbg},
    hint_diagnostic_selected = {fg = c.blue, bg = c.lbg, italic = true, bold = true},
    info = {fg = c.purple, bg = c.dbg},
    info_visible = {fg = c.purple, bg = c.lbg},
    info_selected = {fg = c.purple, bg = c.lbg, italic = true, bold = true},
    info_diagnostic = {fg = c.purple, bg = c.dbg},
    info_diagnostic_visible = {fg = c.purple, bg = c.lbg},
    info_diagnostic_selected = {fg = c.purple, bg = c.lbg, italic = true, bold = true},
    warning = {fg = c.orange, bg = c.dbg},
    warning_visible = {fg = c.orange, bg = c.lbg},
    warning_selected = {fg = c.orange, bg = c.lbg, italic = true, bold = true},
    warning_diagnostic = {fg = c.orange, bg = c.dbg},
    warning_diagnostic_visible = {fg = c.orange, bg = c.lbg},
    warning_diagnostic_selected = {fg = c.orange, bg = c.lbg, italic = true, bold = true},
    error = {fg = c.red, bg = c.dbg},
    error_visible = {fg = c.red, bg = c.lbg},
    error_selected = {fg = c.red, bg = c.lbg, italic = true, bold = true},
    error_diagnostic = {fg = c.red, bg = c.dbg},
    error_diagnostic_visible = {fg = c.red, bg = c.lbg},
    error_diagnostic_selected = {fg = c.red, bg = c.lbg, italic = true, bold = true},
    modified = {fg = c.red, bg = c.dbg},
    modified_visible = {fg = c.red, bg = c.lbg},
    modified_selected = {fg = c.red, bg = c.lbg},
    duplicate_selected = {fg = c.cyan, bg = c.lbg, italic = true},
    duplicate_visible = {fg = c.cyan, bg = c.lbg, italic = true},
    duplicate = {fg = c.red, bg = c.dbg, italic = true},
    separator_selected = {fg = c.dbg, bg = c.lbg},
    separator_visible = {fg = c.dbg, bg = c.lbg},
    separator = {fg = c.dbg, bg = c.dbg},
    indicator_selected = {fg = c.red, bg = c.lbg},
    pick_selected = {fg = c.dred, bg = c.lbg, italic = true, bold = true},
    pick_visible = {fg = c.green, bg = c.dbg, italic = true, bold = true},
    pick = {fg = c.green, bg = c.dbg, italic = true, bold = true},
    numbers = {fg = c.fg, bg = c.dbg},
    numbers_selected = {fg = c.fg, bg = c.lbg, bold = true},
    numbers_visible = {fg = c.fg, bg = c.lbg},
}

return kimbox
