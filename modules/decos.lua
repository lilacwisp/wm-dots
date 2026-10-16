local main_col = '#007fff'
local scnd_col = '#0066cc'

hl.config {
  general = {
    border_size = 2,
    col = {
      active_border = main_col,
      inactive_border = scnd_col
    },
  },
  decoration = {
    rounding = 3,
    rounding_power = 3
  }
}
