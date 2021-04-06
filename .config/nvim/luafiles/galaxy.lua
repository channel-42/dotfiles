local gl = require('galaxyline')
local condition = require('galaxyline.condition')
local gls = gl.section

gl.short_line_list = {" "} 

gl.short_line_list = {'NvimTree','vista','dbui','packer'}
local colors = {
    bg=     '#1d1f21',
    red=     '#fb3d66',
    green=     '#6d8c63',
    yellow=     '#e4cd7',
    orange=    '#bf946b',
    blue=     '#8b9eb2',
    violet=    '#cdafd9',
    magenta=     '#796e7f',
    darkblue=    '#55648',
    cyan=     '#7b8e93',
    bg_light= "#4a4b4d",
    bg_red = '#182332',
    fg=    '#f7f8f8',
    clear= 'None',
}

gls.left[1] = {
  RainbowRed = {
    provider = function() return "" end,
    highlight = {colors.bg_light,colors.bg}
  },
}
gls.left[2] = {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local mode_color = {n = colors.red, i = colors.green,v=colors.blue,
                          [''] = colors.blue,V=colors.blue,
                          c = colors.magenta,no = colors.red,s = colors.orange,
                          S=colors.orange,[''] = colors.orange,
                          ic = colors.yellow,R = colors.violet,Rv = colors.violet,
                          cv = colors.red,ce=colors.red, r = colors.cyan,
                          rm = colors.cyan, ['r?'] = colors.cyan,
                          ['!']  = colors.red,t = colors.red
                        }
      vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()])
      return '    '
    end,
    highlight = {colors.red,colors.bg_light,'bold'},
  },
}

gls.left[3] = {
  Padding = {
    provider = function() return " " end,
    highlight = {colors.bg_red,colors.bg_red}
  },
}

gls.left[4] = {
  FileSize = {
    provider = 'FileSize',
    condition = condition.buffer_not_empty,
    highlight = {colors.fg,colors.bg_red}
  }
}


gls.left[5] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg_red},
  },
}

gls.left[6] = {
  FileName = {
    provider = 'FileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.red,colors.bg_red,'bold'}
  }
}


gls.left[7] = {
  PerCent = {
    provider = 'LinePercent',
    highlight = {colors.fg,colors.bg_red,'bold'},
  }
}



gls.left[8] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg_red}
  }
}
gls.left[9] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.orange,colors.bg_red},
  }
}

gls.left[10] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '  ',
    highlight = {colors.cyan,colors.bg_red},
  }
}

gls.left[11] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    highlight = {colors.blue,colors.bg_red},
  }
}
gls.left[12] = {
  RainbowLol = {
    provider = function() return "" end,
    highlight = {colors.bg_red,colors.bg}
  },
}

gls.right[1] = {
  RainbowPep = {
    provider = function() return "" end,
    highlight = {colors.bg_red,colors.bg}
  },
}

gls.right[2] = {
  FileEncode = {
    provider = 'FileEncode',
    condition = condition.hide_in_width,
    highlight = {colors.red,colors.bg_red,'bold'}
  }
}
gls.right[4] = {
  PaddingDark = {
    provider = function() return " " end,
    highlight = {colors.bg_red,colors.bg_red}
  },
}
gls.right[5] = {
  FileFormat = {
    provider = 'FileFormat',
    condition = condition.hide_in_width,
    separator = ' ',
    separator_highlight = {'NONE',colors.bg_light},
    highlight = {colors.red,colors.bg_light,'bold'}
  }
}

gls.right[6] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = condition.check_git_workspace,
    separator = ' ',
    separator_highlight = {'NONE',colors.bg_light},
    highlight = {colors.violet,colors.bg_light,'bold'},
  }
}

gls.right[7] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    highlight = {colors.violet,colors.bg_light,'bold'},
  }
}

gls.right[8] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {colors.green,colors.bg_light},
  }
}
gls.right[9] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = condition.hide_in_width,
    icon = ' 柳',
    highlight = {colors.orange,colors.bg_light},
  }
}

gls.right[10] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = condition.hide_in_width,
    icon = '  ',
    highlight = {colors.red,colors.bg_light},
  }
}

gls.right[11] = {
  RainbowKek = {
    provider = function() return "" end,
    highlight = {colors.bg_light,colors.bg}
  },
}

gls.short_line_left[1] = {
  RainbowRed = {
    provider = function() return '▊ ' end,
    highlight = {colors.blue,colors.bg_light}
  },
}

gls.short_line_left[2] = {
  FileIconGrey = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
        highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg_light},
  },
}


gls.short_line_left[3] = {
  SFileName = {
    provider =  'SFileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.fg,colors.bg_light,'bold'}
  }
}
gls.short_line_left[4] = {
    RainbowT = {
    provider = function() return "" end,
    highlight = {colors.bg_light,colors.bg}
  },
}
