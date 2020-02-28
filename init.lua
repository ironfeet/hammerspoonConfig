-- Load those Spoons
if not hspoon_list then
  hspoon_list = {
    "WinWin",
    "HSaria2",
    "KSheet",
    "IFLookupSelection"
  }
end

for _, v in pairs(hspoon_list) do
  hs.loadSpoon(v)
end

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)

-- WinWin (SizeUp HotKeys)
if spoon.WinWin then
  -- Side
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "left", function() spoon.WinWin:moveAndResize("halfleft") end) 
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "right", function() spoon.WinWin:moveAndResize("halfright") end) 
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "up", function() spoon.WinWin:moveAndResize("halfup") end) 
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "down", function() spoon.WinWin:moveAndResize("halfdown") end) 
  -- Corner
  hs.hotkey.bind({"shift", "alt", "ctrl"}, "left", function() spoon.WinWin:moveAndResize("cornerNW") end) 
  hs.hotkey.bind({"shift", "alt", "ctrl"}, "right", function() spoon.WinWin:moveAndResize("cornerSE") end) 
  hs.hotkey.bind({"shift", "alt", "ctrl"}, "up", function() spoon.WinWin:moveAndResize("cornerNE") end) 
  hs.hotkey.bind({"shift", "alt", "ctrl"}, "down", function() spoon.WinWin:moveAndResize("cornerSW") end) 
  -- Stretch
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "C", function() spoon.WinWin:moveAndResize("center") end) 
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "M", function() spoon.WinWin:moveAndResize("maximize") end) 
  -- Screen
  hs.hotkey.bind({"alt", "ctrl"}, "right", function() spoon.WinWin:moveToScreen("next") end) 
  -- Other
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "/", function() spoon.WinWin:undo() end) 
end

-- HSaria2
if spoon.HSaria2 then
  -- aria2c --enable-rpc --rpc-allow-origin-all -D
  aria2_host = "http://localhost:6800/jsonrpc"
  aria2_secret = ""
  spoon.HSaria2:connectToHost(aria2_host, aria2_secret)
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "D", function() spoon.HSaria2:togglePanel() end)
end

-- KSheet
if spoon.KSheet then
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "K", function() spoon.KSheet:show() end)
  hs.hotkey.bind({"alt", "ctrl"}, "K", function() spoon.KSheet:hide() end)
end

-- IFLookupSelection
if spoon.IFLookupSelection then
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "L", function() spoon.IFLookupSelection:openLexico() end)
end

hs.alert.show("Config Reloaded")