hl.on ('hyprland.start', function ()
  hl.exec_cmd 'gnome-keyring-daemon --start --components=secrets,pkcs11,ssh'
end)

hl.on ('hyprland.start', function ()
  hl.exec_cmd (U.wllp)
  hl.exec_cmd (U.trml .. ' htop')
end)
