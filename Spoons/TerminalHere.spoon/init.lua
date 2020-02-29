--- === Terminal Here ===
---
--- Open terminal on the current path of the finder
---

local obj = {}
obj.__index = obj

-- Metadata
obj.name = "TerminalHere"
obj.version = "0.1"
obj.author = "IronFeet <ironfeet@hotmail.com>"
obj.homepage = "https://github.com/ironfeet/hammerspoonConfig"
obj.license = "MIT - https://opensource.org/licenses/MIT"

--- TerminalHere.logger
--- Variable
--- Logger object used within the Spoon. Can be accessed to set the default log level for the messages coming from the Spoon.
obj.logger = hs.logger.new('TerminalHere')

----------------------------------------------------------------------

--- TerminalHere:openTerminal()
--- Method
--- open Terminal by execute applescript
---
function obj:openTerminal()
  local window = hs.window.focusedWindow()
  local app = window:application():title()

  if app == "Finder" then
    hs.alert.show("Terminal Here")
    local script_path = hs.spoons.scriptPath() .. "terminalHere.scpt"
    hs.osascript.applescriptFromFile(script_path)
  else
    hs.alert.show("Focused app is not Finder.")
  end

end

return obj
