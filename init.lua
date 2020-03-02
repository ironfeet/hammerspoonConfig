-- Load those Spoons
if not hspoon_list then
  hspoon_list = {
    "WinWin",
    "HSaria2",
    "KSheet",
    "IFLookupSelection",
    "TerminalHere",
    "HotKeyList"
  }
end

for _, v in pairs(hspoon_list) do
  hs.loadSpoon(v)
end

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", "Configuration Reload", function()
  hs.reload()
end)

-- WinWin (SizeUp HotKeys)
if spoon.WinWin then
  -- Side
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "left", "Window ⬅", function() spoon.WinWin:moveAndResize("halfleft") end) 
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "right", "Window ➡", function() spoon.WinWin:moveAndResize("halfright") end) 
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "up", "Window ⬆", function() spoon.WinWin:moveAndResize("halfup") end) 
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "down", "Window ⬇", function() spoon.WinWin:moveAndResize("halfdown") end) 
  -- Corner
  hs.hotkey.bind({"shift", "alt", "ctrl"}, "left", "Window ↖", function() spoon.WinWin:moveAndResize("cornerNW") end) 
  hs.hotkey.bind({"shift", "alt", "ctrl"}, "right", "Window ↘", function() spoon.WinWin:moveAndResize("cornerSE") end) 
  hs.hotkey.bind({"shift", "alt", "ctrl"}, "up", "Window ↗", function() spoon.WinWin:moveAndResize("cornerNE") end) 
  hs.hotkey.bind({"shift", "alt", "ctrl"}, "down", "Window ↙", function() spoon.WinWin:moveAndResize("cornerSW") end) 
  -- Stretch
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "C", "Window Center", function() spoon.WinWin:moveAndResize("center") end) 
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "M", "Window ↕↔", function() spoon.WinWin:moveAndResize("maximize") end) 
  -- Screen
  hs.hotkey.bind({"alt", "ctrl"}, "right", "Window ➡ 🖥", function() spoon.WinWin:moveToScreen("next") end) 
  -- Other
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "/", "Window Undo", function() spoon.WinWin:undo() end) 
end

-- HSaria2
if spoon.HSaria2 then
  -- aria2c --enable-rpc --rpc-allow-origin-all -D
  aria2Host = "http://localhost:6800/jsonrpc"
  aria2Secret = ""
  spoon.HSaria2:connectToHost(aria2Host, aria2Secret)
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "D", "Toggle Aria2", function() spoon.HSaria2:togglePanel() end)
end

-- KSheet
if spoon.KSheet then
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "K", "Show Cheatsheet", function() spoon.KSheet:show() end, function() spoon.KSheet:hide() end)
end

-- IFLookupSelection
if spoon.IFLookupSelection then
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "L", "Look up in Lexico", function() spoon.IFLookupSelection:openLexico() end)
end

if spoon.TerminalHere then
  hs.hotkey.bind({"cmd", "alt", "ctrl"}, "T", "Terminal Here", function() spoon.TerminalHere:openTerminal() end)
end

if spoon.HotKeyList then
  spoon.HotKeyList:refresh()
end

hs.alert.show("Config Reloaded")