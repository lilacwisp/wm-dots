hl.curve('base', {
  type = 'bezier',
  points = { {0.0, 0.0}, {1.0, 1.0} }
})
hl.curve('lazy', {
  type = 'bezier',
  points = { {1.0, 0.0}, {1.0, 1.0} }
})
hl.curve('relaxed', {
  type = 'bezier',
  points = { {0.0, 0.0}, {0.0, 1.0} }
})
hl.curve('instant', {
  type = 'bezier',
  points = { {0.0, 1.0}, {0.0, 1.0} }
})

hl.animation { leaf = 'global', enabled = true, speed = 0.5, bezier = 'base' }
hl.animation {
  leaf = 'windows',
  enabled = true,
  speed = 0.5,
  bezier = 'base',
  style = 'popin 100%'
}

hl.animation { leaf = 'windowsMove', enabled = true, speed = 5.0, bezier = 'instant' }

for _, value in ipairs { 'fadeIn', 'fadeOut', 'fadeSwitch' } do
  hl.animation { leaf = value, enabled = true, speed = 5.0, bezier = 'relaxed' }
end
