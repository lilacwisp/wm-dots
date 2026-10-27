hl.window_rule {
  match = { class = '.*' },
  suppress_event = 'maximize'
}

hl.window_rule {
  match = { class = 'org.pwmt.zathura' },
  opacity = '1.0 override'
}

hl.window_rule {
  match = { title = 'Picture-in-Picture' },
  opacity = '1.0 override'
}
