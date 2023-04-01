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
local window = lib:Window("Title") -- replace "Title" with the title of your script
```

## Creating a Tab
To create a tab, add the following code to your script:
```lua
local tab = window:Tab("Name") -- replace "Name" with the name of your tab
```

## Creating Widgits
Widgits are your way of interacting wit the GUI<br>
There are currently 2 widgits (More to come)
- Button
- Checkbox

### Creatign a Button
To create a button add the following code to your script:
```lua
local button = tab:Widgit(
    "Button Text", -- replace with your button text
    lib.widgits.button,
    function()
        -- code to run when button is pressed
        -- code will default to:
        --                      print("pressed")
    end
)
```

### Creatign a Checkbox
To create a checkbox add the following code to your script:
```lua
local button = tab:Widgit(
    "Checkbox Text", -- replace with your checkbox text
    lib.widgits.checkbox,
    function(value)
        -- code to run when button is pressed
        -- code will default to:
        --                      print(value)
    end
)
```