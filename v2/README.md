# 4Lib v2
Basic GUI library for roblox exploits<br>
**WORK IN PROGRESS**
## Setup
To start add the library to your script like this:
```lua
local lib = loadstring(game:HttpGet("https://github.com/4rmy/UILib/blob/main/v2/lib.lua"))()
```

## Creating the Window
Next create the window for your gui.<br>
(4Lib v2 currently only supports 1 window at a time)
```lua
local window = lib:Window("Title") -- replace "Title" with "<Title of your script>"
```

## Creating a Ta