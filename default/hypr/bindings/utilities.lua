o.bind("SUPER + SPACE", "Omarchy menu", "archeox-menu toggle")
o.bind("SUPER + CTRL + E", "Emojis", "archeox-shell shell toggle omarchy.emojis")
o.bind("SUPER + CTRL + C", "Capture menu", "archeox-menu toggle capture")
o.bind("SUPER + CTRL + O", "Toggle menu", "archeox-menu toggle toggle")
o.bind("SUPER + CTRL + H", "Hardware menu", "archeox-menu toggle hardware")
o.bind("SUPER + SHIFT + code:201", "Omarchy menu", "archeox-menu toggle root")
o.bind("SUPER + ESCAPE", "System menu", "archeox-menu toggle system")
o.bind("XF86PowerOff", "Power menu", "archeox-menu toggle system", { locked = true })
o.bind("SUPER + K", "Show key bindings", "archeox-menu-keybindings")
o.bind("SUPER + ALT + K", "Show Tmux key bindings", "archeox-menu-tmux-keybindings")
o.bind("XF86Calculator", "Calculator", "omacalc")

o.bind_toggle("SUPER + SHIFT + SPACE", "Toggle top bar", "bar")
o.bind("SUPER + CTRL + SPACE", "Background switcher", "archeox-menu toggle background")
o.bind("SUPER + SHIFT + CTRL + SPACE", "Theme menu", "archeox-menu toggle theme")
o.bind("SUPER + BACKSPACE", "Toggle window transparency", "archeox-hyprland-window-transparency-toggle")
o.bind("SUPER + SHIFT + BACKSPACE", "Toggle window gaps", "archeox-hyprland-window-gaps-toggle")
o.bind("SUPER + CTRL + BACKSPACE", "Toggle single-window square aspect", "archeox-hyprland-window-single-square-aspect-toggle")

-- xkbcommon names the comma keysym "comma"; the upper-case "COMMA" does not match.
o.bind("SUPER + comma", "Dismiss last notification", "archeox-shell notifications dismissOne")
o.bind("SUPER + SHIFT + comma", "Dismiss all notifications", "archeox-shell notifications dismissAll")
o.bind_toggle("SUPER + CTRL + comma", "Toggle silencing notifications", "notification-silencing")
o.bind("SUPER + ALT + comma", "Invoke last notification", "archeox-shell notifications invokeLast")
o.bind("SUPER + SHIFT + ALT + comma", "Open notification history", "archeox-shell notifications showHistory")

o.bind_toggle("SUPER + CTRL + I", "Toggle locking on idle", "idle")
o.bind_toggle("SUPER + CTRL + N", "Toggle nightlight", "nightlight")
o.bind("SUPER + CTRL + Delete", "Toggle laptop display", "archeox-hyprland-monitor-internal toggle")
o.bind("SUPER + CTRL + ALT + Delete", "Toggle laptop display mirroring", "archeox-hyprland-monitor-internal-mirror toggle")
o.bind("switch:on:Lid Switch", nil, "archeox-system-lid-close", { locked = true })
o.bind("switch:off:Lid Switch", nil, "archeox-hyprland-monitor-clamshell", { locked = true })

o.bind("PRINT", "Screenshot", "archeox-capture-screenshot")
o.bind("ALT + PRINT", "Screenrecording", "archeox-capture-screenrecording --stop-recording || archeox-menu toggle trigger.capture.screenrecord")
o.bind("SUPER + ALT + code:34", "Make webcam overlay smaller", "archeox-capture-webcam-resize smaller")
o.bind("SUPER + ALT + code:35", "Make webcam overlay larger", "archeox-capture-webcam-resize larger")
o.bind("SUPER + PRINT", "Color picker", "pkill hyprpicker || hyprpicker -a")
o.bind("SUPER + CTRL + PRINT", "Extract text (OCR) from screenshot", "archeox-capture-text")

-- While the slurp region picker is open, Return captures the entire focused
-- monitor. The bind lives exactly as long as a selection layer is on screen
-- (slurp opens one per monitor), so it cannot leak or get stuck.
local selection_layers = 0

hl.on("layer.opened", function(layer)
  if layer.namespace == "selection" then
    selection_layers = selection_layers + 1
    if selection_layers == 1 then
      hl.bind("RETURN", hl.dsp.exec_cmd("archeox-capture-region --take-fullscreen"), { description = "Capture entire screen" })
    end
  end
end)

hl.on("layer.closed", function(layer)
  if layer.namespace == "selection" and selection_layers > 0 then
    selection_layers = selection_layers - 1
    if selection_layers == 0 then
      hl.unbind("RETURN")
    end
  end
end)

o.bind("SUPER + CTRL + S", "Share", "archeox-menu toggle share")

o.bind("SUPER + CTRL + PERIOD", "Transcode", "archeox-transcode")

o.bind("SUPER + CTRL + R", "Set reminder", "archeox-menu toggle reminder-set")
o.bind("SUPER + CTRL + ALT + R", "Show reminders", "archeox-reminder show")
o.bind("SUPER + SHIFT + CTRL + R", "Clear reminders", "archeox-reminder clear")

o.bind("SUPER + CTRL + ALT + T", "Show time", "archeox-notification-time")
o.bind("SUPER + CTRL + ALT + B", "Show battery remaining", "archeox-notification-battery")
o.bind("SUPER + CTRL + ALT + W", "Toggle weather", "archeox-notification-weather")

o.bind("SUPER + CTRL + A", "Audio", "archeox-shell shell toggle omarchy.audio")
o.bind("SUPER + CTRL + B", "Bluetooth", "archeox-shell shell toggle omarchy.bluetooth")
o.bind("SUPER + CTRL + D", "Display", "archeox-shell shell toggle omarchy.monitor")
o.bind("SUPER + CTRL + ALT + D", "Calendar", "archeox-shell shell toggle omarchy.clock")
o.bind("SUPER + CTRL + W", "Network", "archeox-shell shell toggle omarchy.network")
o.bind("SUPER + CTRL + P", "Power", "archeox-shell shell toggle omarchy.power")
o.bind("SUPER + CTRL + T", "Activity", { tui = "btop" })

o.bind("SUPER + CTRL + Z", "Zoom in", function()
  local zoom = hl.get_config("cursor.zoom_factor") or 1
  hl.config({ cursor = { zoom_factor = zoom + 1 } })
end)

o.bind("SUPER + CTRL + ALT + Z", "Reset zoom", function()
  hl.config({ cursor = { zoom_factor = 1 } })
end)

o.bind("SUPER + CTRL + L", "Lock system", "archeox-system-lock")
