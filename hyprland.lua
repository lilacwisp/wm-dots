hl.monitor {
  output = '',
  scale = 1.33
}

-- applications and software
trml = 'uwsm app kitty' -- press <c-t>
mntr = trml .. ' htop'
wllp = trml .. ' hyprpaper'

require('modules.binds')
require('modules.rules')
require('modules.start')
require('modules.decos')
require('modules.anims')

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
