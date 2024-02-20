require("config.options")

local utils = require("utils")
local mappings = require("config.mappings")
utils.load_mappings(mappings.general)

require("config.lazy")
