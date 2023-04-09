local lib = {}

function lib:CreateWindow(name, v, config)
    name = name or "Title"
    v = v or "1.0.0"
    config = config or "4lib.txt"

    local prevGui = game.Players.LocalPlayer.PlayerGui:FindFirstChild("gui")
    if prevGui then
        prevGui:Destroy()
    end

    local win = {}
    win.created = false
    win.gui = Instance.new("ScreenGui")
    win.window = Instance.new("Frame")
    win.UICorner = Instance.new("UICorner")
    win.side = Instance.new("Frame")
    win.shadow = Instance.new("Frame")
    win.UIGradient = Instance.new("UIGradient")
    win.underline = Instance.new("Frame")
    win.UIGradient_2 = Instance.new("UIGradient")
    win.title = Instance.new("TextLabel")
    win.user = Instance.new("Frame")
    win.UICorner_2 = Instance.new("UICorner")
    win.bg = Instance.new("Frame")
    win.bg_2 = Instance.new("Frame")
    win.playerpic = Instance.new("ImageLabel")
    win.UICorner_3 = Instance.new("UICorner")
    win.playername = Instance.new("TextLabel")
    win.ver = Instance.new("TextLabel")
    win.drag = Instance.new("Frame")
    win.UICorner_4 = Instance.new("UICorner")
    win.TabList = Instance.new("ScrollingFrame")
    win.UIListLayout = Instance.new("UIListLayout")

    --Properties:

    win.gui.Name = "gui"
    win.gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    win.gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    win.gui.ResetOnSpawn = false

    win.window.Name = "window"
    win.window.Parent = win.gui
    win.window.BackgroundColor3 = Color3.fromRGB(74, 74, 78)
    win.window.BorderColor3 = Color3.fromRGB(0, 0, 0)
    win.window.Position = UDim2.new(0.5, -275, 0.5, -175)
    win.window.Size = UDim2.new(0, 550, 0, 350)
    win.window.ZIndex = 1000

    win.UICorner.Parent = win.window

    win.side.Name = "side"
    win.side.Parent = win.window
    win.side.BackgroundColor3 = Color3.fromRGB(74, 74, 78)
    win.side.BorderSizePixel = 0
    win.side.Position = UDim2.new(0, 8, 0, 0)
    win.side.Size = UDim2.new(0, 142, 0, 350)

    win.shadow.Name = "shadow"
    win.shadow.Parent = win.side
    win.shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    win.shadow.BorderSizePixel = 0
    win.shadow.Position = UDim2.new(1, 0, 0, 0)
    win.shadow.Size = UDim2.new(0, 6, 1, 0)

    win.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(45, 45, 45)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(74, 74, 78))}
    win.UIGradient.Parent = win.shadow

    win.underline.Name = "underline"
    win.underline.Parent = win.side
    win.underline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    win.underline.BorderSizePixel = 0
    win.underline.Position = UDim2.new(0, 0, 0.200000003, 0)
    win.underline.Size = UDim2.new(0.949999988, 0, 0, 1)

    win.UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(74, 74, 78))}
    win.UIGradient_2.Parent = win.underline

    win.title.Name = "title"
    win.title.Parent = win.side
    win.title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    win.title.BackgroundTransparency = 1.000
    win.title.BorderColor3 = Color3.fromRGB(0, 0, 0)
    win.title.BorderSizePixel = 0
    win.title.Position = UDim2.new(0, 0, 0, 8)
    win.title.Size = UDim2.new(0, 134, 0, 50)
    win.title.Font = Enum.Font.SourceSansBold
    win.title.LineHeight = 1.130
    win.title.Text = name
    win.title.TextColor3 = Color3.fromRGB(255, 255, 255)
    win.title.TextScaled = true
    win.title.TextSize = 14.000
    win.title.TextWrapped = true

    win.user.Name = "user"
    win.user.Parent = win.side
    win.user.BackgroundColor3 = Color3.fromRGB(58, 58, 62)
    win.user.Position = UDim2.new(-0.0563380271, 0, 0.871428549, 0)
    win.user.Size = UDim2.new(0, 150, 0, 45)

    win.UICorner_2.Parent = win.user

    win.bg.Name = "bg"
    win.bg.Parent = win.user
    win.bg.BackgroundColor3 = Color3.fromRGB(58, 58, 62)
    win.bg.BorderSizePixel = 0
    win.bg.Size = UDim2.new(0, 150, 0, 37)

    win.bg_2.Name = "bg"
    win.bg_2.Parent = win.user
    win.bg_2.BackgroundColor3 = Color3.fromRGB(58, 58, 62)
    win.bg_2.BorderSizePixel = 0
    win.bg_2.Position = UDim2.new(0.766666651, 0, 0, 0)
    win.bg_2.Size = UDim2.new(0, 35, 0, 45)

    win.playerpic.Name = "playerpic"
    win.playerpic.Parent = win.user
    win.playerpic.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    win.playerpic.BackgroundTransparency = 1.000
    win.playerpic.Position = UDim2.new(0, 2, 0, 2)
    win.playerpic.Size = UDim2.new(0, 40, 0, 40)
    win.playerpic.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
    win.playerpic.ZIndex = 2

    win.UICorner_3.CornerRadius = UDim.new(0.5, 0)
    win.UICorner_3.Parent = win.playerpic

    win.playername.Name = "playername"
    win.playername.Parent = win.user
    win.playername.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    win.playername.BackgroundTransparency = 1.000
    win.playername.BorderSizePixel = 0
    win.playername.Position = UDim2.new(0.313333333, 0, 0.244444445, 0)
    win.playername.Size = UDim2.new(0, 103, 0, 15)
    win.playername.Font = Enum.Font.SourceSansBold
    win.playername.Text = "PlayerName"
    win.playername.TextColor3 = Color3.fromRGB(255, 255, 255)
    win.playername.TextScaled = true
    win.playername.TextSize = 15.000
    win.playername.TextWrapped = true
    win.playername.TextXAlignment = Enum.TextXAlignment.Left
    win.playername.ZIndex = 2

    win.ver.Name = "ver"
    win.ver.Parent = win.side
    win.ver.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    win.ver.BackgroundTransparency = 1.000
    win.ver.BorderSizePixel = 0
    win.ver.Position = UDim2.new(0.0633802786, 0, 0.13142857, 0)
    win.ver.Size = UDim2.new(0, 116, 0, 25)
    win.ver.Font = Enum.Font.SourceSans
    win.ver.Text = "v"..v
    win.ver.TextColor3 = Color3.fromRGB(255, 255, 255)
    win.ver.TextSize = 17.000
    win.ver.TextXAlignment = Enum.TextXAlignment.Left

    win.drag.Name = "drag"
    win.drag.Parent = win.side
    win.drag.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    win.drag.BackgroundTransparency = 1.000
    win.drag.BorderSizePixel = 0
    win.drag.Position = UDim2.new(-0.0422535203, 0, 0, 0)
    win.drag.Size = UDim2.new(0, 148, 0, 70)

    win.UICorner_4.Parent = win.drag

    win.TabList.Name = "TabList"
    win.TabList.Parent = win.side
    win.TabList.Active = true
    win.TabList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    win.TabList.BackgroundTransparency = 1.000
    win.TabList.BorderSizePixel = 0
    win.TabList.Position = UDim2.new(0, 0, 0.202857137, 0)
    win.TabList.Size = UDim2.new(0, 134, 0, 234)
    win.TabList.CanvasSize = UDim2.new(0, 0, 0, 0)

    win.UIListLayout.Parent = win.TabList
    win.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    -- Scripts:

    local function updatePlayer() -- user.updatePlayer 
        local script = Instance.new('LocalScript', win.user)

        local id = game.Players.LocalPlayer.UserId
        local thumbType = Enum.ThumbnailType.HeadShot
        local thumbSize = Enum.ThumbnailSize.Size420x420
        local content, isReady = game.Players:GetUserThumbnailAsync(id, thumbType, thumbSize)
        local imageLabel = script.Parent.playerpic
        imageLabel.Image = content
        
        script.Parent.playername.Text = game.Players.LocalPlayer.Name
    end
    coroutine.wrap(updatePlayer)()
    local function draggable() -- drag.draggable 
        local script = Instance.new('LocalScript', win.drag)

        local UIS = game:GetService("UserInputService")
        
        local draggableFrame = script.Parent
        
        local IsDragging = false 	--checks if the player is dragging the frame
        local dragInput				--input variable which we will use later
        local StartingPoint
        local oldPos		
        local window = script.Parent.Parent.Parent
        
        local function update(input)
            local delta = input.Position - StartingPoint
            window.Position = UDim2.new(oldPos.X.Scale, oldPos.X.Offset + delta.X, oldPos.Y.Scale, oldPos.Y.Offset + delta.Y)
        end
        
        draggableFrame.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                IsDragging = true
                StartingPoint = input.Position
                oldPos = window.Position
        
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        IsDragging = false
                    end
                end)
            end
        end)
        
        draggableFrame.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement then
                dragInput = input
            end
        end)
        
        UIS.InputChanged:Connect(function(input)
            if input == dragInput and IsDragging then
                update(input)
            end
        end)
    end
    coroutine.wrap(draggable)()
    
    win.Tabs = {}

    function win:CreateTab(name)
        name = name or "Tab"
        
        local tab = {}

        tab.TabButton = Instance.new("TextButton")

        tab.TabButton.Name = name
        tab.TabButton.Parent = win.TabList
        tab.TabButton.BackgroundColor3 = Color3.fromRGB(74, 74, 78)
        tab.TabButton.BorderSizePixel = 0
        tab.TabButton.Size = UDim2.new(0, 134, 0, 30)
        tab.TabButton.Font = Enum.Font.SourceSans
        tab.TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        tab.TabButton.TextSize = 15.000
        tab.TabButton.Text = name

        tab.TabBody = Instance.new("ScrollingFrame")

        tab.TabBody.Name = name
        tab.TabBody.Parent = win.window
        tab.TabBody.Active = true
        tab.TabBody.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tab.TabBody.BackgroundTransparency = 1.000
        tab.TabBody.BorderSizePixel = 0
        tab.TabBody.Position = UDim2.new(0.283636361, 0, 0.0228571426, 0)
        tab.TabBody.Size = UDim2.new(0, 394, 0, 334)
        tab.TabBody.Visible = not win.created
        tab.TabBody.CanvasSize = UDim2.new(0, 0, 0, 0)

        tab.UIListLayout = Instance.new("UIListLayout")

        tab.UIListLayout.Parent = tab.TabBody
        tab.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        tab.UIListLayout.Padding = UDim.new(0, 5)

        win.created = true

        tab.TabButton.Activated:Connect(function()
            for _,v in pairs(win.Tabs) do
                v.TabBody.Visible = false
            end
            tab.TabBody.Visible = true
        end)

        function tab:CreateLabel(text)
            text = text or "Label"
            local widgit = {}
            
            widgit.LabelWidgit = Instance.new("Frame")
            widgit.Label = Instance.new("TextLabel")
            widgit.UICorner = Instance.new("UICorner")

            widgit.LabelWidgit.Name = "LabelWidgit"
            widgit.LabelWidgit.Parent = tab.TabBody
            widgit.LabelWidgit.BackgroundColor3 = Color3.fromRGB(50, 50, 53)
            widgit.LabelWidgit.Size = UDim2.new(1, 0, 0, 30)

            widgit.Label.Name = "Label"
            widgit.Label.Parent = widgit.LabelWidgit
            widgit.Label.BackgroundColor3 = Color3.fromRGB(74, 74, 78)
            widgit.Label.BackgroundTransparency = 1.000
            widgit.Label.BorderSizePixel = 0
            widgit.Label.Position = UDim2.new(0, 5, 0, 0)
            widgit.Label.Size = UDim2.new(1, -10, 0, 30)
            widgit.Label.Font = Enum.Font.SourceSansBold
            widgit.Label.Text = text
            widgit.Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            widgit.Label.TextSize = 20.000
            widgit.Label.TextXAlignment = Enum.TextXAlignment.Left

            widgit.UICorner.Parent = widgit.LabelWidgit
            
            return widgit
        end
        --[[
        function tab:CreateParagraph(title, body)
            title = title or "Title"
            body = body or "Body"

            local widgit = {}
            
            widgit.ParagraphWidgit = Instance.new("Frame")
            widgit.Label = Instance.new("TextLabel")
            widgit.UICorner = Instance.new("UICorner")
            widgit.Body = Instance.new("TextLabel")

            --Properties:

            widgit.ParagraphWidgit.Name = "ParagraphWidgit"
            widgit.ParagraphWidgit.Parent = tab.TabBody
            widgit.ParagraphWidgit.BackgroundColor3 = Color3.fromRGB(50, 50, 53)
            widgit.ParagraphWidgit.Size = UDim2.new(1, 0, 0, 0)
            widgit.ParagraphWidgit.AutomaticSize = Enum.AutomaticSize.Y

            widgit.Label.Name = "Label"
            widgit.Label.Parent = widgit.ParagraphWidgit
            widgit.Label.BackgroundColor3 = Color3.fromRGB(74, 74, 78)
            widgit.Label.BackgroundTransparency = 1.000
            widgit.Label.BorderSizePixel = 0
            widgit.Label.Position = UDim2.new(0, 5, 0, 0)
            widgit.Label.Size = UDim2.new(1, -10, 0, 30)
            widgit.Label.Font = Enum.Font.SourceSansBold
            widgit.Label.Text = title
            widgit.Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            widgit.Label.TextSize = 20.000
            widgit.Label.TextXAlignment = Enum.TextXAlignment.Left

            widgit.UICorner.Parent = widgit.ParagraphWidgit

            widgit.Body.Name = "Body"
            widgit.Body.Parent = widgit.ParagraphWidgit
            widgit.Body.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            widgit.Body.BackgroundTransparency = 1.000
            widgit.Body.BorderSizePixel = 0
            widgit.Body.Position = UDim2.new(0, 5, 0, 30)
            widgit.Body.Size = UDim2.new(1, -10, 0, 0)
            widgit.Body.Font = Enum.Font.SourceSans
            widgit.Body.Text = body
            widgit.Body.TextColor3 = Color3.fromRGB(255, 255, 255)
            widgit.Body.TextSize = 14.000
            widgit.Body.TextWrapped = true
            widgit.Body.TextXAlignment = Enum.TextXAlignment.Left
            widgit.Body.TextYAlignment = Enum.TextYAlignment.Top
            --widgit.body.AutomaticSize = Enum.AutomaticSize.Y

            return widgit
        end
        ]]

        function tab:CreateButton(text, callback)
            text = text or "Button"
            callback = callback or function() print("pressed") end
            
            local widgit = {}
            
            widgit.ButtonWidgit = Instance.new("Frame")
            widgit.UICorner = Instance.new("UICorner")
            widgit.TextButton = Instance.new("TextButton")
            widgit.UICorner_2 = Instance.new("UICorner")

            --Properties:

            widgit.ButtonWidgit.Name = "ButtonWidgit"
            widgit.ButtonWidgit.Parent = tab.TabBody
            widgit.ButtonWidgit.BackgroundColor3 = Color3.fromRGB(50, 50, 53)
            widgit.ButtonWidgit.Size = UDim2.new(1, 0, 0, 30)

            widgit.UICorner.Parent = widgit.ButtonWidgit

            widgit.TextButton.Parent = widgit.ButtonWidgit
            widgit.TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            widgit.TextButton.BackgroundTransparency = 1.000
            widgit.TextButton.Size = UDim2.new(1, 0, 0, 30)
            widgit.TextButton.Font = Enum.Font.SourceSans
            widgit.TextButton.Text = text
            widgit.TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            widgit.TextButton.TextSize = 20.000

            widgit.UICorner_2.Parent = widgit.TextButton

            widgit.TextButton.Activated:Connect(callback)
            
            return widgit
        end

        function tab:CreateCheckbox(text, callback)
            text = text or "Checkbox"
            callback = callback or function(v) print(v) end
            
            local widgit = {}
            widgit.toggled = false

            widgit.CheckboxWidgit = Instance.new("Frame")
            widgit.CheckboxTitle = Instance.new("TextLabel")
            widgit.UICorner = Instance.new("UICorner")
            widgit.TextButton = Instance.new("TextButton")
            widgit.UICorner_2 = Instance.new("UICorner")

            --Properties:

            widgit.CheckboxWidgit.Name = "CheckboxWidgit"
            widgit.CheckboxWidgit.Parent = tab.TabBody
            widgit.CheckboxWidgit.BackgroundColor3 = Color3.fromRGB(50, 50, 53)
            widgit.CheckboxWidgit.Size = UDim2.new(1, 0, 0, 30)

            widgit.CheckboxTitle.Name = "CheckboxTitle"
            widgit.CheckboxTitle.Parent = widgit.CheckboxWidgit
            widgit.CheckboxTitle.BackgroundColor3 = Color3.fromRGB(74, 74, 78)
            widgit.CheckboxTitle.BackgroundTransparency = 1.000
            widgit.CheckboxTitle.BorderSizePixel = 0
            widgit.CheckboxTitle.Position = UDim2.new(0, 5, 0, 0)
            widgit.CheckboxTitle.Size = UDim2.new(1, -10, 0, 30)
            widgit.CheckboxTitle.Font = Enum.Font.SourceSansBold
            widgit.CheckboxTitle.Text = text
            widgit.CheckboxTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            widgit.CheckboxTitle.TextSize = 20.000
            widgit.CheckboxTitle.TextXAlignment = Enum.TextXAlignment.Left

            widgit.UICorner.Parent = widgit.CheckboxWidgit

            widgit.TextButton.Parent = widgit.CheckboxWidgit
            widgit.TextButton.BackgroundColor3 = Color3.fromRGB(74, 74, 78)
            widgit.TextButton.Position = UDim2.new(1, -25, 0, 5)
            widgit.TextButton.Size = UDim2.new(0, 20, 0, 20)
            widgit.TextButton.Font = Enum.Font.SourceSans
            widgit.TextButton.Text = ""
            widgit.TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            widgit.TextButton.TextSize = 14.000

            widgit.UICorner_2.Parent = widgit.TextButton

            widgit.TextButton.Activated:Connect(function()
                widgit.toggled = not widgit.toggled
                if widgit.toggled then
                    widgit.TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                else
                    widgit.TextButton.BackgroundColor3 = Color3.fromRGB(74, 74, 78)
                end
                callback(widgit.toggled)
            end)

            return widgit
        end

        table.insert(win.Tabs, tab)
        return tab
    end

    return win
end

return lib
