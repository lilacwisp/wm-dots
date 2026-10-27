hl.monitor {
  output = '',
  scale = 1.33
}

local U = {}

U.trml = 'uwsm app kitty'
U.brsr = 'uwsm app firefox'
U.mntr = U.trml .. ' htop'
U.wllp = 'uwsm app hyprpaper'

_G.U = U

require 'modules.binds'
require 'modules.rules'
require 'modules.start'
require 'modules.decos'
require 'modules.anims'

hl.config {
  decoration = {
    active_opacity = 0.9,
    inactive_opacity = 0.33,

    blur = { enabled = true },
    shadow = { enabled = false }
  },

  animations = { enabled = true }
}
