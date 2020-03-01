--- === Break Time ===
---
--- Break Time reminder
---

local obj = {}
obj.__index = obj

-- Metadata
obj.name = "BreakTime"
obj.version = "0.1"
obj.author = "IronFeet <ironfeet@hotmail.com>"
obj.homepage = "https://github.com/ironfeet/hammerspoonConfig"
obj.license = "MIT - https://opensource.org/licenses/MIT"

--- BreakTime.logger
--- Variable
--- Logger object used within the Spoon. Can be accessed to set the default log level for the messages coming from the Spoon.
obj.logger = hs.logger.new('BreakTime')

obj.menubar = hs.menubar.new()

obj.microbreakTime = 10
obj.microbreakInterval = 10
obj.microbreakCount = 2
obj.breakTime = 1

obj.curMicrobreakCount = 0
obj.curTime = 0

obj.Timer = nil

----------------------------------------------------------------------

--- BreakTime:createMenu()
--- Method
--- create the menu for BreakTime
---
function obj:createMenu()

  obj.menubar:setTitle("🧍")
  obj.menubar:setTooltip("BreakTime Info")
  refresh()

  obj.Timer = hs.timer.new(60, refresh)
  obj.Timer:start()

end

function obj:setParameters(microbreakTime, microbreakInterval, microbreakCount, breakTime)
  obj.microbreakTime = microbreakTime
  obj.microbreakInterval = microbreakInterval
  obj.microbreakCount = microbreakCount
  obj.breakTime = breakTime
end

function refresh()

  local menuItem = {}

  local microbreakItem = { title = "Microbreaks: " .. obj.microbreakTime .. " second(s) break in every " .. obj.microbreakInterval .. " minute(s)" }
  table.insert(menuItem, microbreakItem)
  local breakItem = { title = "Breaks: " .. obj.breakTime .. " minute(s) break after " .. obj.microbreakCount .. " micobreak(s)" }
  table.insert(menuItem, breakItem)

  obj.curTime = obj.curTime + 1
  if obj.curTime > obj.microbreakInterval then
  
    obj.curMicrobreakCount = obj.curMicrobreakCount + 1
    if obj.curMicrobreakCount > obj.microbreakCount then
      hs.alert.show("B Start")
      obj.curMicrobreakCount = 0
    else
      hs.alert.show("MB Start")
    end

    obj.curTime = obj.curTime - obj.microbreakInterval

  end

  local nextBreakTime = obj.microbreakInterval - obj.curTime + 1
  local nextBreakItem = { title = "Next break will be in " .. nextBreakTime .. " minute(s)" }
  table.insert(menuItem, nextBreakItem)

  obj.logger:w("CurTime: " .. obj.curTime .. "  CurMicrobreakTime: " .. obj.curMicrobreakCount .. " NextBreak: " .. nextBreakTime .. " CurMicroBreakCount: " .. obj.curMicrobreakCount)

  obj.menubar:setMenu(menuItem)

end

return obj
