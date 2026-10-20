local dsp = hl.dispatch

local b = hl.bind
local d = hl.dsp
local c = d.exec_cmd
local w = d.window

local mod = 'SUPER'

b (mod .. ' + t', function () dsp (c (U.trml)) end)
b (mod .. ' + b', function () dsp (c (U.brsr)) end)

b (mod .. ' + SHIFT + q', function ()
  dsp (c 'uwsm stop' ) end, { description = 'exit this Wayland session' })

b (mod .. ' + q', function () dsp (w.close {}) end)

for bind, direction in pairs { h = 'left', l = 'right', j = 'down', k = 'up' } do
  b (mod .. ' + ' .. bind, function ()
    dsp (d.focus { direction = direction }) end, { release = true, click = true })

  b (mod .. ' + ' .. bind, function ()
    dsp (w.move { direction = direction }) end, { long_press = true })
end

for index = 1, 10 do
  local key = index % 10
  b (mod .. ' + ' .. key, function ()
    dsp (d.focus { workspace = key }) end, { release = true, click = true })

  b (mod .. ' + ' .. key, function ()
    dsp (d.window.move { workspace = key }) end, { long_press = true })
end
