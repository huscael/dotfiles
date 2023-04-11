hs.loadSpoon("ClipboardTool")
hs.loadSpoon("WinWin")

-- ClipboardTool
-- spoon.ClipboardTool:start()
-- spoon.ClipboardTool.hist_size = 10
-- spoon.paste_on_select = true
-- hs.hotkey.bind({"shift", "ctrl"}, "M", function() spoon.ClipboardTool:toggleClipboard() end)

function moveApp()
    -- Get the focused window, its window frame dimensions, its screen frame dimensions,
    -- and the next screen's frame dimensions.
    local focusedWindow = hs.window.focusedWindow()
    local focusedScreenFrame = focusedWindow:screen():frame()
    local nextScreenFrame = focusedWindow:screen():next():frame()
    local windowFrame = focusedWindow:frame()

    -- Calculate the coordinates of the window frame in the next screen and retain aspect ratio
    windowFrame.x = ((((windowFrame.x - focusedScreenFrame.x) / focusedScreenFrame.w) * nextScreenFrame.w) + nextScreenFrame.x)
    windowFrame.y = ((((windowFrame.y - focusedScreenFrame.y) / focusedScreenFrame.h) * nextScreenFrame.h) + nextScreenFrame.y)
    windowFrame.h = ((windowFrame.h / focusedScreenFrame.h) * nextScreenFrame.h)
    windowFrame.w = ((windowFrame.w / focusedScreenFrame.w) * nextScreenFrame.w)

    -- Set the focused window's new frame dimensions
    focusedWindow:setFrame(windowFrame)
end

-- WinWin
hs.hotkey.bind({"shift", "ctrl"}, "K", function() spoon.WinWin:moveAndResize("halfup") end)
hs.hotkey.bind({"shift", "ctrl"}, "J", function() spoon.WinWin:moveAndResize("halfdown") end)
hs.hotkey.bind({"shift", "ctrl"}, "H", function() spoon.WinWin:moveAndResize("halfleft") end)
hs.hotkey.bind({"shift", "ctrl"}, "L", function() spoon.WinWin:moveAndResize("halfright") end)
hs.hotkey.bind({"shift", "ctrl"}, "U", function() spoon.WinWin:moveAndResize("cornerNW") end)
hs.hotkey.bind({"shift", "ctrl"}, "O", function() spoon.WinWin:moveAndResize("cornerNE") end)
hs.hotkey.bind({"shift", "ctrl"}, "N", function() spoon.WinWin:moveAndResize("cornerSW") end)
hs.hotkey.bind({"shift", "ctrl"}, ".", function() spoon.WinWin:moveAndResize("cornerSE") end)

-- move app between monitors
hs.hotkey.bind({"shift", "ctrl"}, "/", moveApp)

-- move cursor between monitors
hs.hotkey.bind({"shift", "ctrl"}, "space", function()
    local screen = hs.mouse.getCurrentScreen()
    local nextScreen = screen:next()
    local rect = nextScreen:fullFrame()
    local center = hs.geometry.rectMidPoint(rect)
hs.mouse.setAbsolutePosition(center)
hs.eventtap.leftClick(center)
end)

-- Launch vscode
hs.hotkey.bind({"shift", "ctrl"}, "V", function()
  hs.application.launchOrFocus("Visual Studio Code")
end)

-- Launch IDEA
hs.hotkey.bind({"shift", "ctrl"}, "I", function()
  hs.application.launchOrFocus("Intellij IDEA")
end)

-- auto-switch ClashX vpn
-- hs.hotkey.bind({"shift", "ctrl"}, '0', function()
--   hs.applescript([[
--     tell application "System Events" to tell process "ClashX"
--       ignoring application responses
--           click menu bar item 1 of menu bar 2
--       end ignoring
--     end tell
--   ]])
--   local timer = hs.timer.delayed.new(0.1, function()
--       hs.eventtap.keyStroke({"cmd"}, "S")
--   end)
--   timer:start()
-- end)

-- key map for durgod keyboard
hs.hotkey.bind({"shift"}, "escape", function()
    hs.eventtap.keyStrokes("~")
end)
