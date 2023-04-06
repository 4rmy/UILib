local lib = {button = "BUTTON", checkbox = "CHECKBOX", textbox = "TEXTBOX"}

function lib:CreateWindow(WindowName)
    local currgui = game.Players.LocalPlayer.PlayerGui:FindFirstChild("gui")
    if currgui then
        currgui:Destroy()
    end
    
    local win = {}
    win.tabs = {}
    win.tabcount = 0
    -- Instances:
        win.gui = Instance.new("ScreenGui")
        win.rainbow = Instance.new("Color3Value")
        win.win = Instance.new("Frame")
        win.UICorner = Instance.new("UICorner")
        win.Topbar = Instance.new("Frame")
        win.UICorner_2 = Instance.new("UICorner")
        win.Title = Instance.new("TextLabel")
        win.Close = Instance.new("TextButton")
        win.UICorner_3 = Instance.new("UICorner")
        win.Minimize = Instance.new("TextButton")
        win.UICorner_4 = Instance.new("UICorner")
        win.border = Instance.new("Frame")
        win.TabFrame = Instance.new("ScrollingFrame")
        win.UIListLayout = Instance.new("UIListLayout")
        win.Notifications = Instance.new("Frame")
        win.UIListLayout_3 = Instance.new("UIListLayout")
    -- Properties:
        win.gui.Name = "gui"
        win.gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        win.gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        win.gui.DisplayOrder = 999

        win.rainbow.Name = "rainbow"
        win.rainbow.Parent = win.gui
        win.rainbow.Value = Color3.fromRGB(0,0,0)

        win.win.Name = "win"
        win.win.Parent = win.gui
        win.win.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        win.win.BorderColor3 = Color3.fromRGB(0, 0, 0)
        win.win.Position = UDim2.new(0.5, -250, 0.5, -250)
        win.win.Size = UDim2.new(0, 500, 0, 300)
        
        win.UICorner.Parent = win.win

        win.Topbar.Name = "Topbar"
        win.Topbar.Parent = win.win
        win.Topbar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        win.Topbar.Size = UDim2.new(0, 500, 0, 35)
        
        win.UICorner_2.Parent = win.Topbar

        win.Title.Name = "Title"
        win.Title.Parent = win.Topbar
        win.Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        win.Title.BackgroundTransparency = 1.000
        win.Title.Position = UDim2.new(0, 10, 0, 0)
        win.Title.Size = UDim2.new(0, 200, 0, 30)
        win.Title.Font = Enum.Font.SourceSansBold
        win.Title.Text = WindowName
        win.Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        win.Title.TextSize = 26.000
        win.Title.TextXAlignment = Enum.TextXAlignment.Left

        win.Close.Name = "Close"
        win.Close.Parent = win.Topbar
        win.Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        win.Close.BackgroundTransparency = 1.000
        win.Close.Position = UDim2.new(0.939999998, 0, 0, 0)
        win.Close.Size = UDim2.new(0, 30, 0, 30)
        win.Close.Font = Enum.Font.SourceSansBold
        win.Close.Text = "X"
        win.Close.TextColor3 = Color3.fromRGB(255, 255, 255)
        win.Close.TextSize = 26.000
        win.Close.Activated:Connect(function()
            win.win.Visible = false
            win:Notification("Open Gui", "Press RightShift to open the GUI again", 3)
        end)

        win.UICorner_3.Parent = win.Close

        win.Minimize.Name = "Minimize"
        win.Minimize.Parent = win.Topbar
        win.Minimize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        win.Minimize.BackgroundTransparency = 1.000
        win.Minimize.Position = UDim2.new(0.879999995, 0, 0, 0)
        win.Minimize.Size = UDim2.new(0, 30, 0, 30)
        win.Minimize.Font = Enum.Font.SourceSansBold
        win.Minimize.Text = "–"
        win.Minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
        win.Minimize.TextSize = 26.000

        win.UICorner_4.Parent = win.Minimize

        win.border.Name = "border"
        win.border.Parent = win.Topbar
        win.border.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        win.border.BorderColor3 = Color3.fromRGB(0, 0, 0)
        win.border.BorderSizePixel = 0
        win.border.Position = UDim2.new(0, 0, 0, 30)
        win.border.Size = UDim2.new(0, 500, 0, 5)

        win.TabFrame.Name = "TabFrame"
        win.TabFrame.Parent = win.win
        win.TabFrame.Active = true
        win.TabFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        win.TabFrame.BorderSizePixel = 0
        win.TabFrame.Position = UDim2.new(0, 0, 0.116666667, 0)
        win.TabFrame.Size = UDim2.new(0, 100, 0, 265)
        win.TabFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
        win.TabFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

        win.UIListLayout.Parent = win.TabFrame
        win.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        win.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center

        win.Notifications.Name = "Notifications"
        win.Notifications.Parent = win.gui
        win.Notifications.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        win.Notifications.BackgroundTransparency = 1.000
        win.Notifications.Position = UDim2.new(1, -160, 1, -150)
        win.Notifications.Size = UDim2.new(0, 150, 0, 100)
        
        win.UIListLayout_3.Parent = win.Notifications
        win.UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
        win.UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Bottom
        win.UIListLayout_3.Padding = UDim.new(0, 5)
    -- Scripts:
        local function EZSADOC_fake_script()
            local script = Instance.new('LocalScript', win.border)
        
            script.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.rainbow.Value
            while wait() do
                script.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.rainbow.Value
            end
        end
        coroutine.wrap(EZSADOC_fake_script)()
        local function VFOPV_fake_script() -- gui.color 
            local script = Instance.new('LocalScript', win.gui)
        
            local hue = 0
            script.Parent.rainbow.Value = Color3.fromHSV(hue/360, 1, 1)
            
            while wait() do
                hue = hue + 2
                if hue > 360 then
                    hue = 0
                end
                script.Parent.rainbow.Value = Color3.fromHSV(hue/360, 1, 1)
            end
        end
        coroutine.wrap(VFOPV_fake_script)()
        local function PGWBSJT_fake_script() -- gui.LocalScript 
            local script = Instance.new('LocalScript', win.gui)
        
            local service = game:GetService("UserInputService")
            
            service.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.Keyboard then
                    if input.KeyCode == Enum.KeyCode.RightShift then
                        script.Parent.win.Visible = true
                    end
                end
            end)
            
        end
        coroutine.wrap(PGWBSJT_fake_script)()
        local function HSUYESF_fake_script() -- Topbar.LocalScript
            local script = Instance.new('LocalScript', win.Topbar)
            
            local UIS = game:GetService("UserInputService")
        
            local frameToDrag = script.Parent
            local draggableFrame = script.Parent.Parent
            
            local IsDragging = false    --checks if the player is dragging the frame
            local dragInput             --input variable which we will use later
            local StartingPoint
            local oldPos                --Old position from the frame
            
            local function update(input)
                local delta = input.Position - StartingPoint
                draggableFrame.Position = UDim2.new(oldPos.X.Scale, oldPos.X.Offset + delta.X, oldPos.Y.Scale, oldPos.Y.Offset + delta.Y)
            end
            
            frameToDrag.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    IsDragging = true
                    StartingPoint = input.Position
                    oldPos = draggableFrame.Position
            
                    input.Changed:Connect(function()
                        if input.UserInputState == Enum.UserInputState.End then
                            IsDragging = false
                        end
                    end)
                end
            end)
            
            frameToDrag.InputChanged:Connect(function(input)
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
        coroutine.wrap(HSUYESF_fake_script)()
    -- Functions:
        function win:CreateTab(TabName)
            win.tabcount = win.tabcount + 1
            local tab = {}
            tab.id = win.tabcount
            -- Instances:
                tab.Tab = Instance.new("TextButton")
                tab.TabBody = Instance.new("ScrollingFrame")
                tab.UIListLayout_2 = Instance.new("UIListLayout")
            -- Properties:
                tab.Tab.Name = "Tab"
                tab.Tab.Parent = win.TabFrame
                tab.Tab.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                tab.Tab.BorderSizePixel = 0
                tab.Tab.Size = UDim2.new(0, 100, 0, 30)
                tab.Tab.Font = Enum.Font.SourceSans
                tab.Tab.Text = TabName
                tab.Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
                tab.Tab.TextSize = 14.000

                tab.TabBody.Name = "TabBody"
                tab.TabBody.Parent = win.win
                tab.TabBody.Active = true
                tab.TabBody.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                tab.TabBody.BorderSizePixel = 0
                tab.TabBody.Position = UDim2.new(0.200000003, 0, 0.116666667, 0)
                tab.TabBody.Size = UDim2.new(0, 400, 0, 265)
                tab.TabBody.CanvasSize = UDim2.new(0, 0, 0, 0)
                tab.TabBody.ScrollBarThickness = 10

                tab.UIListLayout_2.Parent = tab.TabBody
                tab.UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
                tab.UIListLayout_2.Padding = UDim.new(0, 5)
            -- Scripts:
                tab.Tab.Activated:Connect(function()
                    for i,v in pairs(win.tabs) do
                        v.TabBody.Visible = false
                    end
                    tab.TabBody.Visible = true
                end)
                if tab.id == 1 then
                    tab.TabBody.Visible = true
                else
                    tab.TabBody.Visible = false
                end
            -- Functions:
                function tab:AddWidgit(WidgitName, WidgitType, WidgitCallback)
                    local widgit = {}
                    if WidgitType == nil then
                        return nil
                    elseif WidgitType == lib.button then
                        -- Instances:
                            widgit.ButtonWidgit = Instance.new("TextButton")
                            widgit.UICorner_5 = Instance.new("UICorner")
                        -- Properties:
                            widgit.ButtonWidgit.Name = "ButtonWidgit"
                            widgit.ButtonWidgit.Parent = tab.TabBody
                            widgit.ButtonWidgit.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                            widgit.ButtonWidgit.BorderSizePixel = 0
                            widgit.ButtonWidgit.Size = UDim2.new(0, 390, 0, 30)
                            widgit.ButtonWidgit.Font = Enum.Font.SourceSans
                            widgit.ButtonWidgit.TextColor3 = Color3.fromRGB(255, 255, 255)
                            widgit.ButtonWidgit.TextSize = 23.000
                            widgit.ButtonWidgit.Text = WidgitName

                            widgit.UICorner_5.Parent = widgit.ButtonWidgit
                        -- Scripts:
                            if WidgitCallback == nil then
                                widgit.ButtonWidgit.Activated:Connect(function()
                                    print(WidgitName, "was pressed")
                                end)
                            else
                                widgit.ButtonWidgit.Activated:Connect(WidgitCallback)
                            end
                    elseif WidgitType == lib.checkbox then
                        -- Instances:
                            widgit.CheckboxWidgit = Instance.new("Frame")
                            widgit.UICorner_6 = Instance.new("UICorner")
                            widgit.CheckBoxTitle = Instance.new("TextLabel")
                            widgit.UICorner_7 = Instance.new("UICorner")
                            widgit.CheckBoxButton = Instance.new("TextButton")
                            widgit.UICorner_8 = Instance.new("UICorner")
                            widgit.UIStroke_2 = Instance.new("UIStroke")
                            widgit.toggled = Instance.new("BoolValue")
                        -- Properties:
                            widgit.CheckboxWidgit.Name = "CheckboxWidgit"
                            widgit.CheckboxWidgit.Parent = tab.TabBody
                            widgit.CheckboxWidgit.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                            widgit.CheckboxWidgit.Size = UDim2.new(0, 390, 0, 30)

                            widgit.UICorner_6.Parent = widgit.CheckboxWidgit

                            widgit.CheckBoxTitle.Name = "CheckBoxTitle"
                            widgit.CheckBoxTitle.Parent = widgit.CheckboxWidgit
                            widgit.CheckBoxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            widgit.CheckBoxTitle.BackgroundTransparency = 1.000
                            widgit.CheckBoxTitle.Position = UDim2.new(0, 10, 0, 0)
                            widgit.CheckBoxTitle.Size = UDim2.new(0, 248, 0, 30)
                            widgit.CheckBoxTitle.Font = Enum.Font.SourceSans
                            widgit.CheckBoxTitle.Text = WidgitName
                            widgit.CheckBoxTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
                            widgit.CheckBoxTitle.TextSize = 23.000
                            widgit.CheckBoxTitle.TextXAlignment = Enum.TextXAlignment.Left

                            widgit.UICorner_7.Parent = widgit.CheckBoxTitle

                            widgit.CheckBoxButton.Name = "CheckBoxButton"
                            widgit.CheckBoxButton.Parent = widgit.CheckboxWidgit
                            widgit.CheckBoxButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            widgit.CheckBoxButton.Position = UDim2.new(1, -40, 0, 5)
                            widgit.CheckBoxButton.Size = UDim2.new(0, 20, 0, 20)
                            widgit.CheckBoxButton.Font = Enum.Font.SourceSans
                            widgit.CheckBoxButton.Text = ""
                            widgit.CheckBoxButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                            widgit.CheckBoxButton.TextSize = 14.000

                            widgit.UICorner_8.CornerRadius = UDim.new(0, 5)
                            widgit.UICorner_8.Parent = widgit.CheckBoxButton

                            widgit.UIStroke_2.Parent = widgit.CheckBoxButton
                            widgit.UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                            widgit.UIStroke_2.Thickness = 2

                            widgit.toggled.Name = "toggled"
                            widgit.toggled.Parent = widgit.CheckBoxButton
                            widgit.toggled.Value = false
                        -- Scripts:
                            if WidgitCallback == nil then
                                widgit.CheckBoxButton.Activated:Connect(function()
                                    widgit.toggled.Value = not widgit.toggled.Value
                                    print(WidgitName, "Value:", widgit.toggled.Value)
                                end)
                            else
                                widgit.CheckBoxButton.Activated:Connect(function()
                                    widgit.toggled.Value = not widgit.toggled.Value
                                    WidgitCallback(widgit.toggled.Value)
                                end)
                            end
                            local function NEUHTTA_fake_script() -- CheckBoxButton.LocalScript 
                                local script = Instance.new('LocalScript', widgit.CheckBoxButton)
                            
                                while wait() do
                                    if script.Parent.toggled.Value then
                                        script.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.Parent.rainbow.Value
                                    else
                                        script.Parent.BackgroundColor3 = Color3.fromRGB(25,25,25)
                                    end
                                end
                            end
                            coroutine.wrap(NEUHTTA_fake_script)()
                        -- Functions:
                    elseif WidgitType == lib.textbox then
                        -- Instances:
                            widgit.TextInputWidgit = Instance.new("Frame")
                            widgit.UICorner_9 = Instance.new("UICorner")
                            widgit.TextInputTitle = Instance.new("TextLabel")
                            widgit.UICorner_10 = Instance.new("UICorner")
                            widgit.TextBox = Instance.new("TextBox")
                            widgit.UICorner_11 = Instance.new("UICorner")
                            widgit.UIStroke = Instance.new("UIStroke")
                        -- Properties:
                            widgit.TextInputWidgit.Name = "TextInputWidgit"
                            widgit.TextInputWidgit.Parent = tab.TabBody
                            widgit.TextInputWidgit.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                            widgit.TextInputWidgit.Size = UDim2.new(0, 390, 0, 30)
                                
                            widgit.UICorner_9.Parent = widgit.TextInputWidgit
                                
                            widgit.TextInputTitle.Name = "TextInputTitle"
                            widgit.TextInputTitle.Parent = widgit.TextInputWidgit
                            widgit.TextInputTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            widgit.TextInputTitle.BackgroundTransparency = 1.000
                            widgit.TextInputTitle.Position = UDim2.new(0, 10, 0, 0)
                            widgit.TextInputTitle.Size = UDim2.new(0, 248, 0, 30)
                            widgit.TextInputTitle.Font = Enum.Font.SourceSans
                            widgit.TextInputTitle.Text = WidgitName
                            widgit.TextInputTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
                            widgit.TextInputTitle.TextSize = 23.000
                            widgit.TextInputTitle.TextXAlignment = Enum.TextXAlignment.Left
                                
                            widgit.UICorner_10.Parent = widgit.TextInputTitle
                                
                            widgit.TextBox.Parent = widgit.TextInputWidgit
                            widgit.TextBox.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
                            widgit.TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
                            widgit.TextBox.Position = UDim2.new(1, -110, 0, 5)
                            widgit.TextBox.Size = UDim2.new(0, 100, 0, 20)
                            widgit.TextBox.Font = Enum.Font.SourceSans
                            widgit.TextBox.Text = "Default"
                            widgit.TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
                            widgit.TextBox.TextSize = 14.000
                                
                            widgit.UICorner_11.Parent = widgit.TextBox
                                
                            widgit.UIStroke.Parent = widgit.TextBox
                            widgit.UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                            widgit.UIStroke.Thickness = 2
                        -- Scripts:
                            widgit.TextBox.FocusLost(function(enterPressed)
                                if enterPressed then
                                    if WidgitCallback then
                                        WidgitCallback(widgit.TextBox.Text)
                                    else
                                        print(WidgitName, "Value:", widgit.TextBox.Text)
                                    end
                                end
                            end)
                        -- Functions:
                    end
                    return widgit
                end
            table.insert(win.tabs, tab)
            return tab
        end
        function win:Notification(Title, Msg, Duration)
            local Notification = Instance.new("Frame")
			local UICorner_12 = Instance.new("UICorner")
			local NotificationTitle = Instance.new("TextLabel")
			local UICorner_13 = Instance.new("UICorner")
			local NotificationBody = Instance.new("TextLabel")
		    local Hide = Instance.new("TextButton")
			local UICorner_14 = Instance.new("UICorner")
        
            Notification.Name = "Notification"
            Notification.Parent = win.Notifications
            Notification.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
            Notification.BorderColor3 = Color3.fromRGB(0, 0, 0)
            Notification.BorderSizePixel = 0
            Notification.Size = UDim2.new(0, 150, 0, 100)

            UICorner_12.Parent = Notification

            NotificationTitle.Name = "NotificationTitle"
            NotificationTitle.Parent = Notification
            NotificationTitle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            NotificationTitle.Size = UDim2.new(0, 150, 0, 30)
            NotificationTitle.Font = Enum.Font.SourceSansBold
            NotificationTitle.Text = Title
            NotificationTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            NotificationTitle.TextSize = 20.000

            UICorner_13.Parent = NotificationTitle

            NotificationBody.Name = "NotificationBody"
            NotificationBody.Parent = Notification
            NotificationBody.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NotificationBody.BackgroundTransparency = 1.000
            NotificationBody.Position = UDim2.new(0, 0, 0.300000012, 0)
            NotificationBody.Size = UDim2.new(0, 150, 0, 70)
            NotificationBody.Font = Enum.Font.SourceSans
            NotificationBody.Text = Msg
            NotificationBody.TextColor3 = Color3.fromRGB(255, 255, 255)
            NotificationBody.TextSize = 14.000
            NotificationBody.TextWrapped = true

            Hide.Name = "Hide"
            Hide.Parent = Notification
            Hide.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Hide.BackgroundTransparency = 1.000
            Hide.Position = UDim2.new(0.800000012, 0, 0, 0)
            Hide.Size = UDim2.new(0, 30, 0, 30)
            Hide.Font = Enum.Font.SourceSansBold
            Hide.Text = "X"
            Hide.TextColor3 = Color3.fromRGB(255, 255, 255)
            Hide.TextSize = 21.000

            UICorner_14.Parent = Hide

            local function WYXEJ_fake_script()
                local script = Instance.new('LocalScript', Hide)
            
                script.Parent.Activated:Connect(function()
                    script.Parent.Parent:Destroy()
                end)
            end
            coroutine.wrap(WYXEJ_fake_script)()
            local function HJKLRYS_fake_script(dur) -- Hide.LocalScript 
                local script = Instance.new('LocalScript', Notification)

                if dur then
                    wait(dur)
                    script.Parent:Destroy()
                else
                    wait(5)
                    script.Parent:Destroy()
                end
            end
            coroutine.wrap(HJKLRYS_fake_script)(Duration)
        -- add tween
            Notification:TweenPosition(UDim2.new(0,0,0,0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.2, false)
        end
    
    return win
end

return lib
