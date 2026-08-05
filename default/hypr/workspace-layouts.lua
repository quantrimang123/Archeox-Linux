-- Restore workspace layouts saved by archeox-hyprland-workspace-layout-toggle.

local paths = require("default.hypr.paths")
local require_all = require("default.hypr.require_all")

local layouts_dir = paths.state_home .. "/archeox/workspace-layouts"

require_all.files(layouts_dir, "archeox.workspace-layouts", { reload = true })
