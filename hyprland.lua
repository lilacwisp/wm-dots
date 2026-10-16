hl.monitor {
  output = '',
  scale = 1.33
}

local U = {}

U.trml = 'uwsm app kitty' -- press <c-t>
U.mntr = U.trml .. ' htop'
U.wllp = U.trml .. ' hyprpaper'

_G.U = U

require 'modules.binds'
require 'modules.rules'
require 'modules.start'
require 'modules.decos'
require 'modules.anims'

-- essential settings
hl.config {
  decoration = {
    active_opacity = 0.9,
    inactive_opacity = 0.33,

    blur = { enabled = false },
    shadow = { enabled = false }
  },

  animations = { enabled = true }
}
