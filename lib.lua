local library = {}

function library:CreateWindow(Name)
    local currGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("GUI")
    if currGui ~= nil then
        currGui:Destroy()
    end
    
    local win = {}
    win.GUI = Instance.new("ScreenGui")
    win.Main = Instance.new("Frame")
    win.UICorner = Instance.new("UICorner")
    win.Body = Instance.new("Folder")
    win.topbar = Instance.new("Frame")
    win.UICorner_8 = Instance.new("UICorner")
    win.Frame = Instance.new("Frame")
    win.Close = Instance.new("TextButton")
    win.UICorner_9 = Instance.new("UICorner")
    win.Minimize = Instance.new("TextButton")
    win.UICorner_10 = Instance.new("UICorner")
    win.Title = Instance.new("TextLabel")
    win.UICorner_11 = Instance.new("UICorner")
    win.Tabs = Instance.new("ScrollingFrame")
    win.ListLayout = Instance.new("UIListLayout")
    win.TabList = Instance.new("Frame")

    win.tablist = {}
    win.tabCount = 0
    win.currentTab = 1

    win.GUI.Name = "GUI"
    win.GUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    win.GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    win.Main.Name = "Main"
    win.Main.Parent = win.GUI
    win.Main.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
    win.Main.Position = UDim2.new(0.416616499, 0, 0.266033262, 0)
    win.Main.Size = UDim2.new(0, 500, 0, 300)

    win.UICorner.Parent = win.Main

    win.Body.Name = "Body"
    win.Body.Parent = win.Main

    win.topbar.Name = "topbar"
    win.topbar.Parent = win.GUI
    win.topbar.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
    win.topbar.Position = UDim2.new(0.416999996, 0, 0.266000003, 0)
    win.topbar.Size = UDim2.new(0, 500, 0, 20)

    win.UICorner_8.Parent = win.topbar

    win.Frame.Parent = win.topbar
    win.Frame.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
    win.Frame.BorderSizePixel = 0
    win.Frame.Position = UDim2.new(0, 0, 0.449999988, 0)
    win.Frame.Size = UDim2.new(0, 500, 0, 11)

    win.Close.Name = "Close"
    win.Close.Parent = win.topbar
    win.Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    win.Close.BackgroundTransparency = 1.000
    win.Close.Position = UDim2.new(0.959999979, 0, 0, 0)
    win.Close.Size = UDim2.new(0, 20, 0, 20)
    win.Close.Font = Enum.Font.SourceSansBold
    win.Close.Text = "X"
    win.Close.TextColor3 = Color3.fromRGB(255, 255, 255)
    win.Close.TextSize = 20.000

    win.UICorner_9.Parent = win.Close

    win.Minimize.Name = "Minimize"
    win.Minimize.Parent = win.topbar
    win.Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    win.Minimize.BackgroundTransparency = 1.000
    win.Minimize.Position = UDim2.new(0.920000017, 0, 0, 0)
    win.Minimize.Size = UDim2.new(0, 20, 0, 20)
    win.Minimize.Font = Enum.Font.SourceSansBold
    win.Minimize.Text = "-"
    win.Minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
    win.Minimize.TextSize = 40.000

    win.UICorner_10.Parent = win.Minimize

    win.Title.Name = "Title"
    win.Title.Parent = win.topbar
    win.Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    win.Title.BackgroundTransparency = 1.000
    win.Title.Position = UDim2.new(0, 5, 0, 0)
    win.Title.Size = UDim2.new(0, 200, 0, 20)
    win.Title.Font = Enum.Font.SourceSansBold
    win.Title.Text = Name
    win.Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    win.Title.TextSize = 20.000
    win.Title.TextXAlignment = Enum.TextXAlignment.Left

    win.UICorner_11.Parent = win.Title

    win.TabList.Name = "TabList"
    win.TabList.Parent = win.Body
    win.TabList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    win.TabList.BackgroundTransparency = 1.000
    win.TabList.Position = UDim2.new(0, 0, 0.0666666701, 0)
    win.TabList.Size = UDim2.new(0, 100, 0, 280)

    win.Tabs.Name = "Tabs"
    win.Tabs.Parent = win.Body
    win.Tabs.Active = true
    win.Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    win.Tabs.BackgroundTransparency = 1.000
    win.Tabs.Position = UDim2.new(0, 5, 0, 25)
    win.Tabs.Size = UDim2.new(0, 100, 0, 270)
    win.Tabs.ScrollBarThickness = 0
    win.Tabs.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

    win.ListLayout.Name = "ListLayout"
    win.ListLayout.Parent = win.Tabs
    win.ListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    win.ListLayout.Padding = UDim.new(0, 3)

    -- Scripts:

    local function HNJNSF_fake_script() -- Close.CloseScript 
        local script = Instance.new('LocalScript', win.Close)

        script.Parent.Activated:Connect(function()
            script.Parent.Parent.Parent:Destroy()
        end)
    end
    coroutine.wrap(HNJNSF_fake_script)()
    local function YVRSSZL_fake_script() -- Minimize.MinimizeScript 
        local script = Instance.new('LocalScript', win.Minimize)

        script.Parent.Activated:Connect(function()
            script.Parent.Parent.Parent:FindFirstChild("Main").Visible = not script.Parent.Parent.Parent:FindFirstChild("Main").Visible
        end)
    end
    coroutine.wrap(YVRSSZL_fake_script)()
    local function RPCPHLQ_fake_script() -- topbar.DragScript 
        local script = Instance.new('LocalScript', win.topbar)

        local UserInputService = game:GetService("UserInputService")
        
        local gui = script.Parent
        
        local dragging
        local dragInput
        local dragStart
        local startPos
        
        local function update(input)
            local delta = input.Position - dragStart
            gui.Parent:FindFirstChild("Main").Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            gui.Position = gui.Parent:FindFirstChild("Main").Position
        end
        
        gui.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = gui.Parent:FindFirstChild("Main").Position
        
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragging = false
                    end
                end)
            end
        end)
        
        gui.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)
        
        UserInputService.InputChanged:Connect(function(input)
            if input == dragInput and dragging then
                if gui.Visible then
                    update(input)
                end
            end
        end)
    end
    coroutine.wrap(RPCPHLQ_fake_script)()

    -- Functions:

    function win:CreateTab(Name)
        local tab = {}
        win.tabCount = win.tabCount + 1
        tab.id = win.tabCount
        tab.TabButton = Instance.new("TextButton")
        tab.UICorner_2 = Instance.new("UICorner")
        tab.UIListLayout = Instance.new("UIListLayout")

        tab.TabButton.Name = Name
        tab.TabButton.Parent = win.Tabs
        tab.TabButton.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
        tab.TabButton.Size = UDim2.new(0, 100, 0, 20)
        tab.TabButton.Font = Enum.Font.SourceSansSemibold
        tab.TabButton.Text = Name
        tab.TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        tab.TabButton.TextSize = 16.000
        tab.TabButton.TextWrapped = true

        tab.UICorner_2.CornerRadius = UDim.new(1, 8)
        tab.UICorner_2.Parent = tab.TabButton

        tab.Tab = Instance.new("Frame")
        tab.TabBottomLeft = Instance.new("Frame")
        tab.TabBottom = Instance.new("Frame")
        tab.UICorner_3 = Instance.new("UICorner")
        tab.TabWidgits = Instance.new("ScrollingFrame")

        tab.Tab.Name = "Tab"
        tab.Tab.Parent = win.Body
        tab.Tab.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        tab.Tab.BorderSizePixel = 0
        tab.Tab.Position = UDim2.new(0.220000014, 0, 0.0666666701, 0)
        tab.Tab.Size = UDim2.new(0, 390, 0, 270)
        tab.Tab.Visible = false

        tab.TabBottomLeft.Name = "TabBottomLeft"
        tab.TabBottomLeft.Parent = tab.Tab
        tab.TabBottomLeft.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        tab.TabBottomLeft.BorderSizePixel = 0
        tab.TabBottomLeft.Position = UDim2.new(0, 0, 0.962962985, 0)
        tab.TabBottomLeft.Size = UDim2.new(0, 20, 0, 20)

        tab.TabBottom.Name = "TabBottom"
        tab.TabBottom.Parent = tab.Tab
        tab.TabBottom.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        tab.TabBottom.BorderSizePixel = 0
        tab.TabBottom.Position = UDim2.new(0, 0, 0.962962985, 0)
        tab.TabBottom.Size = UDim2.new(0, 390, 0, 20)

        tab.UICorner_3.Parent = tab.TabBottom

        tab.TabWidgits.Name = ".TabWidgits"
        tab.TabWidgits.Parent = tab.Tab
        tab.TabWidgits.Active = true
        tab.TabWidgits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tab.TabWidgits.BackgroundTransparency = 1.000
        tab.TabWidgits.BorderSizePixel = 0
        tab.TabWidgits.Position = UDim2.new(0, 5, 0, 5)
        tab.TabWidgits.Size = UDim2.new(0, 380, 0, 270)

        tab.UIListLayout.Parent = tab.TabWidgits
        tab.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        tab.UIListLayout.Padding = UDim.new(0, 5)

        tab.TabButton.Activated:Connect(function()
            win.tablist[win.currentTab].Tab.Visible = false
            tab.Tab.Visible = true
            win.currentTab = tab.id
        end)
        
        tab.widgits = {}
        
        function tab:CreateWidgit(name, type, callback)
            local widgit = {}
            if type == "Button" then
                widgit.ButtonWidgit = Instance.new("Frame")
                widgit.UICorner_4 = Instance.new("UICorner")
                widgit.Button = Instance.new("TextButton")

                widgit.ButtonWidgit.Name = "ButtonWidgit " .. name
                widgit.ButtonWidgit.Parent = tab.TabWidgits
                widgit.ButtonWidgit.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
                widgit.ButtonWidgit.Size = UDim2.new(0, 365, 0, 30)

                widgit.UICorner_4.Parent = widgit.ButtonWidgit

                widgit.Button.Name = name .. "Button"
                widgit.Button.Parent = widgit.ButtonWidgit
                widgit.Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                widgit.Button.BackgroundTransparency = 1.000
                widgit.Button.Text = name
                widgit.Button.Size = UDim2.new(0, 365, 0, 30)
                widgit.Button.Font = Enum.Font.SourceSansBold
                widgit.Button.TextColor3 = Color3.fromRGB(255, 255, 255)
                widgit.Button.TextSize = 16.000
                widgit.Button.Activated:Connect(callback)
            elseif type == "Checkbox" then
                widgit.CheckboxWidgit = Instance.new("Frame")
                widgit.UICorner_5 = Instance.new("UICorner")
                widgit.CheckboxName = Instance.new("TextLabel")
                widgit.Checkbox = Instance.new("TextButton")
                widgit.UICorner_6 = Instance.new("UICorner")
                widgit.Value = false

                widgit.CheckboxWidgit.Name = "Checkbox Widgit " .. name
                widgit.CheckboxWidgit.Parent = tab.TabWidgits
                widgit.CheckboxWidgit.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
                widgit.CheckboxWidgit.Size = UDim2.new(0, 365, 0, 30)

                widgit.UICorner_5.Parent = widgit.CheckboxWidgit

                widgit.CheckboxName.Name = name
                widgit.CheckboxName.Parent = widgit.CheckboxWidgit
                widgit.CheckboxName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                widgit.CheckboxName.BackgroundTransparency = 1.000
                widgit.CheckboxName.Position = UDim2.new(0, 10, 0, 0)
                widgit.CheckboxName.Size = UDim2.new(0, 280, 0, 30)
                widgit.CheckboxName.Font = Enum.Font.SourceSansBold
                widgit.CheckboxName.Text = name
                widgit.CheckboxName.TextColor3 = Color3.fromRGB(255, 255, 255)
                widgit.CheckboxName.TextSize = 16.000
                widgit.CheckboxName.TextXAlignment = Enum.TextXAlignment.Left

                widgit.Checkbox.Name = name .. " Checkbox"
                widgit.Checkbox.Parent = widgit.CheckboxWidgit
                widgit.Checkbox.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
                widgit.Checkbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
                widgit.Checkbox.Position = UDim2.new(0, 340, 0.166666672, 0)
                widgit.Checkbox.Size = UDim2.new(0, 20, 0, 20)
                widgit.Checkbox.Font = Enum.Font.SourceSans
                widgit.Checkbox.Text = ""
                widgit.Checkbox.TextColor3 = Color3.fromRGB(0, 0, 0)
                widgit.Checkbox.TextSize = 20.000

                widgit.Checkbox.Activated:Connect(function()
                    widgit.Value = not widgit.Value
                    if widgit.Value == true then
                        widgit.Checkbox.BackgroundColor3 = Color3.fromRGB(37, 170, 55)
                    else
                        widgit.Checkbox.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
                    end
                    callback(widgit.Value)
                end)

                widgit.UICorner_6.Parent = widgit.Checkbox
            elseif type == "Section" then
                widgit.widgits = {}

                widgit.SectionWidgit = Instance.new("Frame")
                widgit.UICorner_7 = Instance.new("UICorner")
                widgit.SectionName = Instance.new("TextLabel")
                widgit.UIListLayout_2 = Instance.new("UIListLayout")
                widgit.UIPadding = Instance.new("UIPadding")

                widgit.SectionWidgit.Name = "Section Widgit " .. name
                widgit.SectionWidgit.Parent = tab.TabWidgits
                widgit.SectionWidgit.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                widgit.SectionWidgit.Position = UDim2.new(0, 0, 0.259259254, 0)
                widgit.SectionWidgit.Size = UDim2.new(0, 365, 0, 30)
                widgit.SectionWidgit.AutomaticSize = Enum.AutomaticSize.Y

                widgit.UICorner_7.Parent = widgit.SectionWidgit

                widgit.SectionName.Name = name
                widgit.SectionName.Parent = widgit.SectionWidgit
                widgit.SectionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                widgit.SectionName.BackgroundTransparency = 1.000
                widgit.SectionName.Position = UDim2.new(0.0414817668, 0, 0.166666672, 0)
                widgit.SectionName.Size = UDim2.new(0, 100, 0, 20)
                widgit.SectionName.Font = Enum.Font.SourceSansBold
                widgit.SectionName.Text = name
                widgit.SectionName.TextColor3 = Color3.fromRGB(255, 255, 255)
                widgit.SectionName.TextSize = 16.000
                widgit.SectionName.TextXAlignment = Enum.TextXAlignment.Left

                widgit.UIListLayout_2.Parent = widgit.SectionWidgit
                widgit.UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
                widgit.UIListLayout_2.Padding = UDim.new(0, 5)

                widgit.UIPadding.Parent = widgit.SectionWidgit
                widgit.UIPadding.PaddingBottom = UDim.new(0, 5)
                widgit.UIPadding.PaddingLeft = UDim.new(0, 10)
                widgit.UIPadding.PaddingTop = UDim.new(0, 5)
                
                function widgit:CreateWidgit(nname, type, callback)
                    local nwidgit = {}
                    if type == "Button" then
                        nwidgit.ButtonWidgit = Instance.new("Frame")
                        nwidgit.UICorner_4 = Instance.new("UICorner")
                        nwidgit.Button = Instance.new("TextButton")

                        nwidgit.ButtonWidgit.Name = "ButtonWidgit " .. nname
                        nwidgit.ButtonWidgit.Parent = widgit.SectionWidgit
                        nwidgit.ButtonWidgit.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
                        nwidgit.ButtonWidgit.Size = UDim2.new(0, 350, 0, 30)

                        nwidgit.UICorner_4.Parent = nwidgit.ButtonWidgit

                        nwidgit.Button.Name = name .. "Button"
                        nwidgit.Button.Parent = nwidgit.ButtonWidgit
                        nwidgit.Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        nwidgit.Button.BackgroundTransparency = 1.000
                        nwidgit.Button.Text = nname
                        nwidgit.Button.Size = UDim2.new(0, 350, 0, 30)
                        nwidgit.Button.Font = Enum.Font.SourceSansBold
                        nwidgit.Button.TextColor3 = Color3.fromRGB(255, 255, 255)
                        nwidgit.Button.TextSize = 16.000
                        nwidgit.Button.Activated:Connect(callback)
                    elseif type == "Checkbox" then
                        nwidgit.CheckboxWidgit = Instance.new("Frame")
                        nwidgit.UICorner_5 = Instance.new("UICorner")
                        nwidgit.CheckboxName = Instance.new("TextLabel")
                        nwidgit.Checkbox = Instance.new("TextButton")
                        nwidgit.UICorner_6 = Instance.new("UICorner")

                        nwidgit.CheckboxWidgit.Name = "Checkbox Widgit " .. name
                        nwidgit.CheckboxWidgit.Parent = widgit.SectionWidgit
                        nwidgit.CheckboxWidgit.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
                        nwidgit.CheckboxWidgit.Size = UDim2.new(0, 350, 0, 30)

                        nwidgit.UICorner_5.Parent = nwidgit.CheckboxWidgit

                        nwidgit.CheckboxName.Name = name
                        nwidgit.CheckboxName.Parent = nwidgit.CheckboxWidgit
                        nwidgit.CheckboxName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                        nwidgit.CheckboxName.BackgroundTransparency = 1.000
                        nwidgit.CheckboxName.Position = UDim2.new(0, 10, 0, 0)
                        nwidgit.CheckboxName.Size = UDim2.new(0, 280, 0, 30)
                        nwidgit.CheckboxName.Font = Enum.Font.SourceSansBold
                        nwidgit.CheckboxName.Text = nname
                        nwidgit.CheckboxName.TextColor3 = Color3.fromRGB(255, 255, 255)
                        nwidgit.CheckboxName.TextSize = 16.000
                        nwidgit.CheckboxName.TextXAlignment = Enum.TextXAlignment.Left

                        nwidgit.Checkbox.Name = name .. " Checkbox"
                        nwidgit.Checkbox.Parent = nwidgit.CheckboxWidgit
                        nwidgit.Checkbox.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
                        nwidgit.Checkbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
                        nwidgit.Checkbox.Position = UDim2.new(0, 325, 0.166666672, 0)
                        nwidgit.Checkbox.Size = UDim2.new(0, 20, 0, 20)
                        nwidgit.Checkbox.Font = Enum.Font.SourceSans
                        nwidgit.Checkbox.Text = " "
                        nwidgit.Checkbox.TextColor3 = Color3.fromRGB(0, 0, 0)
                        nwidgit.Checkbox.TextSize = 20.000

                        nwidgit.Checkbox.Activated:Connect(function()
                            nwidgit.Value = not nwidgit.Value
                            if nwidgit.Value == true then
                                nwidgit.Checkbox.BackgroundColor3 = Color3.fromRGB(37, 170, 55)
                            else
                                nwidgit.Checkbox.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
                            end
                            callback(nwidgit.Value)
                        end)

                        nwidgit.UICorner_6.Parent = nwidgit.Checkbox
                    end
                    table.insert(widgit.widgits, nwidgit)
                    return widgit
                end
            end
            table.insert(tab.widgits, widgit)
            return widgit
        end

        table.insert(win.tablist, tab)
        if win.tablist[1] == tab then
            tab.Tab.Visible = true
        end
        return tab
    end

    function win:destroy()
        win.GUI:Destroy()
        win = nil
    end

    return win
end

--Properties:

_G.lib = library