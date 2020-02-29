--- === HotKeyList ===
---
--- One list which contains all of the hot keys
---

local obj = {}
obj.__index = obj

-- Metadata
obj.name = "HotKeyList"
obj.version = "0.1"
obj.author = "IronFeet <ironfeet@hotmail.com>"
obj.homepage = "https://github.com/ironfeet/hammerspoonConfig"
obj.license = "MIT - https://opensource.org/licenses/MIT"

--- HotKeyList.logger
--- Variable
--- Logger object used within the Spoon. Can be accessed to set the default log level for the messages coming from the Spoon.
obj.logger = hs.logger.new('HotKeyList')

obj.menubar = hs.menubar.new()

----------------------------------------------------------------------

--- HotKeyList:refresh()
--- Method
--- refresh hot key list
---
function obj:refresh()

  obj.menubar:setTitle("⌨️")
  obj.menubar:setTooltip("Hot Key Info")

  local hotkeys = hs.hotkey.getHotkeys()
  local menuItem = {}
  
  for key, value in pairs(hotkeys) do  
    local item = { title = value["msg"] }
    table.insert(menuItem, item)
  end 

  obj.menubar:setMenu(menuItem)

end

return obj
