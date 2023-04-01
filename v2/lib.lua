-- create library class
local lib = {}
lib.widgits = {button = "BUTTON", checkbox = "CHECKBOX"}

-- window function
function lib:Window(title)
    -- delete current windows
        local gui = game.Players.LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("gui")
        if gui then
            gui:Destroy()
        end

    -- create window object
        local win = {}
        win.tabcount = 0
        win.tablist = {}

    -- create instances
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
    
    -- apply properties
        win.gui.Name = "gui"
        win.gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
        win.gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

        win.rainbow.Name = "rainbow"
        win.rainbow.Value = Color3.fromRGB(0,0,0)
        win.rainbow.Parent = win.gui

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
        win.Title.Text = title
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

        win.Notifications.Name = "Notifications"
        win.Notifications.Parent = win.gui
        win.Notifications.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        win.Notifications.BackgroundTransparency = 1.000
        win.Notifications.Position = UDim2.new(1, -160, 1, -150)
        win.Notifications.Size = UDim2.new(0, 150, 0, 100)
    
    -- add scripts
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

        local function BCMNEC_fake_script() -- gui.color 
            local script = Instance.new('LocalScript', win.gui)
            local hue = 0
            script.Parent:WaitForChild("rainbow").Value = Color3.fromHSV(hue/360, 1, 1)
            
            while wait() do
                hue = hue + 2
                if hue > 360 then
                    hue = 0
                end
                script.Parent:WaitForChild("rainbow").Value = Color3.fromHSV(hue/360, 1, 1)
            end
        end
        coroutine.wrap(BCMNEC_fake_script)()

        local function QCDCL_fake_script() -- border.bordorcolor 
            local script = Instance.new('LocalScript', win.border)

            win.border.BackgroundColor3 = win.border.Parent.Parent.Parent.rainbow.Value
            while wait() do
                win.border.BackgroundColor3 = win.border.Parent.Parent.Parent.rainbow.Value
            end
        end
        coroutine.wrap(QCDCL_fake_script)()

        local function GRUDAUE_fake_script() -- gui.LocalScript 
            local script = Instance.new('LocalScript', win.gui)

            local service = game:GetService("UserInputService")
            
            service.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.Keyboard then
                    if input.KeyCode == Enum.KeyCode.RightShift then
                        win.gui.win.Visible = true
                    end
                end
            end)
            
        end
        coroutine.wrap(GRUDAUE_fake_script)()
        
    -- add functions
        function win:Tab(title1)
            -- create tab object
                local tab = {}
                win.tabcount = win.tabcount + 1
                tab.id = win.tabcount

            -- create instances
                tab.Tab = Instance.new("TextButton")
                tab.UICorner_5 = Instance.new("UICorner")
                tab.TabBody = Instance.new("ScrollingFrame")
                tab.UIListLayout_2 = Instance.new("UIListLayout")

            -- apply properties
                tab.Tab.Name = "Tab "
                tab.Tab.Parent = win.TabFrame
                tab.Tab.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                tab.Tab.BorderSizePixel = 0
                tab.Tab.Size = UDim2.new(0, 100, 0, 30)
                tab.Tab.Font = Enum.Font.SourceSans
                tab.Tab.Text = title1
                tab.Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
                tab.Tab.TextSize = 14.000

                tab.UICorner_5.Parent = tab.Tab

                tab.TabBody.Name = "TabBody"
                tab.TabBody.Parent = win.win
                tab.TabBody.Visible = false
                tab.TabBody.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                tab.TabBody.BorderSizePixel = 0
                tab.TabBody.Position = UDim2.new(0.200000003, 0, 0.116666667, 0)
                tab.TabBody.Size = UDim2.new(0, 400, 0, 265)
                tab.TabBody.CanvasSize = UDim2.new(0, 0, 0, 0)
                tab.TabBody.ScrollBarThickness = 10

                tab.UIListLayout_2.Parent = tab.TabBody
                tab.UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
                tab.UIListLayout_2.Padding = UDim.new(0, 5)

            -- add scripts
                if tab.id == 1 then
                    tab.TabBody.Visible = true
                end

                tab.Tab.Activated:Connect(function() 
                    for i,t in pairs(win.tablist) do
                        if i ~= tab.id then
                            t.TabBody.Visible = false
                        else
                            t.TabBody.Visible = true
                        end
                    end
                end)

            -- add functions
                function tab:Widgit(title2, wtype, callback)
                    -- create widgit object
                    local widgit = {}

                    if wtype == lib.widgits.button then
                        -- create instances
                            widgit.ButtonWidgit = Instance.new("TextButton")
                            widgit.UICorner_9 = Instance.new("UICorner")

                        -- apply properties
                            widgit.ButtonWidgit.Name = "ButtonWidgit"
                            widgit.ButtonWidgit.Parent = tab.TabBody
                            widgit.ButtonWidgit.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                            widgit.ButtonWidgit.BorderSizePixel = 0
                            widgit.ButtonWidgit.Size = UDim2.new(0, 390, 0, 30)
                            widgit.ButtonWidgit.Font = Enum.Font.SourceSans
                            widgit.ButtonWidgit.TextColor3 = Color3.fromRGB(255, 255, 255)
                            widgit.ButtonWidgit.TextSize = 23.000
                            widgit.ButtonWidgit.Text = title2

                            widgit.UICorner_9.Parent = widgit.ButtonWidgit

                        -- add scripts
                            -- no scripts
                        -- add fuctions
                            if callback ~= nil then
                                widgit.ButtonWidgit.Activated:Connect(callback)
                            else
                                widgit.ButtonWidgit.Activated:Connect(function() print("pressed") end)
                            end

                    elseif wtype == lib.widgits.checkbox then
                        -- create instances
                            widgit.CheckboxWidgit = Instance.new("Frame")
                            widgit.UICorner_6 = Instance.new("UICorner")
                            widgit.CheckBoxTitle = Instance.new("TextLabel")
                            widgit.UICorner_7 = Instance.new("UICorner")
                            widgit.CheckBoxButton = Instance.new("TextButton")
                            widgit.toggled = Instance.new("BoolValue")
                            widgit.UICorner_8 = Instance.new("UICorner")

                        -- apply properties
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
                            widgit.CheckBoxTitle.Text = title2
                            widgit.CheckBoxTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
                            widgit.CheckBoxTitle.TextSize = 23.000
                            widgit.CheckBoxTitle.TextXAlignment = Enum.TextXAlignment.Left

                            widgit.UICorner_7.Parent = CheckBoxTitle

                            widgit.CheckBoxButton.Name = "CheckBoxButton"
                            widgit.CheckBoxButton.Parent = widgit.CheckboxWidgit
                            widgit.CheckBoxButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            widgit.CheckBoxButton.Position = UDim2.new(1, -40, 0, 5)
                            widgit.CheckBoxButton.Size = UDim2.new(0, 20, 0, 20)
                            widgit.CheckBoxButton.Font = Enum.Font.SourceSans
                            widgit.CheckBoxButton.Text = ""
                            widgit.CheckBoxButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                            widgit.CheckBoxButton.TextSize = 14.000

                            widgit.toggled.Value = false
                            widgit.toggled.Name = "toggled"
                            widgit.toggled.Parent = widgit.CheckBoxButton

                            widgit.UICorner_8.CornerRadius = UDim.new(0, 5)
                            widgit.UICorner_8.Parent = widgit.CheckBoxButton

                        -- add scripts
                            local function KYURB_fake_script() -- CheckBoxButton.LocalScript 
                                local script = Instance.new('LocalScript', widgit.CheckBoxButton)

                                while wait() do
                                    if script.Parent.toggled.Value then
                                        script.Parent.BackgroundColor3 = script.Parent.Parent.Parent.Parent.Parent.rainbow.Value
                                    else
                                        script.Parent.BackgroundColor3 = Color3.fromRGB(25,25,25)
                                    end
                                end
                            end
                            coroutine.wrap(KYURB_fake_script)()

                        -- add fuctions
                            widgit.CheckBoxButton.Activated:Connect(function()
                                widgit.toggled.Value = not widgit.toggled.Value
                                if callback then
                                    callback(widgit.toggled.Value)
                                else
                                    print(widgit.toggled.Value)
                                end
                            end)
                    end

                    -- return widgit object
                        return widgit
                end

            -- return tab object
                table.insert(win.tablist, tab)
                return tab
        end

        function win:Notification(title3, msg, duration)
            -- create Instances
                local Notification = Instance.new("Frame")
                local UICorner_10 = Instance.new("UICorner")
                local NotificationTitle = Instance.new("TextLabel")
                local UICorner_11 = Instance.new("UICorner")
                local NotificationBody = Instance.new("TextLabel")
                local Hide = Instance.new("TextButton")
                local UICorner_12 = Instance.new("UICorner")
                local UIListLayout_3 = Instance.new("UIListLayout")
        
            -- apply properties
                Notification.Name = "Notification"
                Notification.Parent = win.Notifications
                Notification.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                Notification.BorderColor3 = Color3.fromRGB(0, 0, 0)
                Notification.BorderSizePixel = 0
                Notification.Size = UDim2.new(0, 150, 0, 100)
                Notification.Position = UDim2.new(1,20,0,0)

                UICorner_10.Parent = Notification

                NotificationTitle.Name = "NotificationTitle"
                NotificationTitle.Parent = Notification
                NotificationTitle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                NotificationTitle.Size = UDim2.new(0, 150, 0, 30)
                NotificationTitle.Font = Enum.Font.SourceSansBold
                NotificationTitle.Text = title3
                NotificationTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
                NotificationTitle.TextSize = 20.000

                UICorner_11.Parent = NotificationTitle

                NotificationBody.Name = "NotificationBody"
                NotificationBody.Parent = Notification
                NotificationBody.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                NotificationBody.BackgroundTransparency = 1.000
                NotificationBody.Position = UDim2.new(0, 0, 0.300000012, 0)
                NotificationBody.Size = UDim2.new(0, 150, 0, 70)
                NotificationBody.Font = Enum.Font.SourceSans
                NotificationBody.Text = msg
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

                UICorner_12.Parent = Hide

                UIListLayout_3.Parent = Notifications
                UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Bottom
                UIListLayout_3.Padding = UDim.new(0, 5)
            -- add scripts
                local function GRLRMYP_fake_script() -- Hide.LocalScript 
                    local script = Instance.new('LocalScript', Hide)

                    script.Parent.Activated:Connect(function()
                        script.Parent.Parent:Destroy()
                    end)
                end
                coroutine.wrap(GRLRMYP_fake_script)()

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
                coroutine.wrap(HJKLRYS_fake_script)(duration)
            -- add tween
                Notification:TweenPosition(UDim2.new(0,0,0,0), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.2, false)
        end

    -- return window object
        return win
end

return lib