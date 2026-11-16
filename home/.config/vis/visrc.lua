require('vis')

-------- config --------

-- global
vis.events.subscribe(vis.events.INIT, function()
  vis:command("set theme caelus")
end)

-- per-window
vis.events.subscribe(vis.events.WIN_OPEN, function(win)
  vis:command("set tabwidth 2")
  vis:command("set numbers true") 
  vis:command("set relativenumbers on")
  vis:command("set autoindent true")
  vis:command("set showspaces false")
  vis:command("set showtabs true")
  vis:command("set expandtab on")
end)

-------- plugins --------

local colorizer = require('plugins/vis-colorizer')
colorizer.three = false -- (optional) diables three digit hex colors
colorizer.six   = true  -- (enabled by default) six digit hex colors
