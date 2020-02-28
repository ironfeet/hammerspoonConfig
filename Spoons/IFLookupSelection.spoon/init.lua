--- === IFLookupSelection ===
---
--- Show a popup window with the currently selected word in lexico
---

local obj={}
obj.__index = obj

-- Metadata
obj.name = "IFLookupSelection"
obj.version = "0.1"
obj.author = "IronFeet <ironfeet@hotmail.com>"
obj.homepage = "https://github.com/ironfeet/hammerspoonConfig"
obj.license = "MIT - https://opensource.org/licenses/MIT"

--- IFLookupSelection.logger
--- Variable
--- Logger object used within the Spoon. Can be accessed to set the default log level for the messages coming from the Spoon.
obj.logger = hs.logger.new('IFLookupSelection')

----------------------------------------------------------------------

-- Internal function to get the currently selected text.
-- issues a Cmd-c and get the pasteboard contents
function current_selection()
   hs.eventtap.keyStroke({"cmd"}, "c")
   hs.timer.usleep(20000)
   sel=hs.pasteboard.getContents()
   return (sel or "")
end

--- LookupSelection:openLexico()
--- Method
--- Get the current selected text in the frontmost window and display a translation popup with the translation between the specified languages
---
--- Returns:
---  * The IFLookupSelection object
function obj:openLexico()
   local text = current_selection()
   local browser = makeBrowser();
   browser:url("https://www.lexico.com/en/definition/" .. text):show()
   browser:closeOnEscape(true)
   browser:deleteOnClose(true)
   browser:bringToFront(true)
end

function makeBrowser ()
   local screen   = require"hs.screen"
   local webview  = require"hs.webview"

   local mainScreenFrame = screen:primaryScreen():frame()
   browserFrame = {
      x = mainScreenFrame.x + mainScreenFrame.w / 4,
      y = mainScreenFrame.y + mainScreenFrame.h / 6,
      h = mainScreenFrame.h / 1.5,
      w = mainScreenFrame.w / 2
   }

   local options = {
       developerExtrasEnabled = true,
   }

   local browser = webview.new(browserFrame, options):windowStyle(1+2+4+8)
     :allowTextEntry(true)
     :allowGestures(true)
     :windowCallback(frameTracker)
     :navigationCallback(function(a, w, n, e)
         if e then
             hs.luaSkinLog.ef("%s browser navigation for %s error:%s", USERDATA_TAG, a, e.localizedDescription)
             return true
         end
         if a == "didFinishNavigation" then
             updateToolbarIcons(w:attachedToolbar(), w)
         end
     end)

   return browser
end

return obj
