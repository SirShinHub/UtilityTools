local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.639646292, 0, 0.399008662, 0)
Frame.Size = UDim2.new(0, 387, 0, 206)
Frame.Active = true

local title = Instance.new("TextLabel")
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
title.BorderSizePixel = 0
title.Size = UDim2.new(0, 387, 0, 50)
title.Font = Enum.Font.GothamBold
title.Text = "Position Finder"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 30.000
title.TextWrapped = true

local copy = Instance.new("TextButton")
copy.Parent = Frame
copy.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
copy.BorderSizePixel = 0
copy.Position = UDim2.new(0.527131796, 0, 0.635922313, 0)
copy.Size = UDim2.new(0, 148, 0, 50)
copy.Font = Enum.Font.GothamSemibold
copy.Text = "Copy"
copy.TextColor3 = Color3.fromRGB(255, 255, 255)
copy.TextSize = 20.000

local pos = Instance.new("TextBox")
pos.Parent = Frame
pos.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
pos.BorderSizePixel = 0
pos.Position = UDim2.new(0.0904392749, 0, 0.305825233, 0)
pos.Size = UDim2.new(0, 317, 0, 50)
pos.Font = Enum.Font.GothamSemibold
pos.Text = ""
pos.TextColor3 = Color3.fromRGB(255, 255, 255)
pos.TextSize = 14.000
pos.TextWrapped = true

local find = Instance.new("TextButton")
find.Parent = Frame
find.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
find.BorderSizePixel = 0
find.Position = UDim2.new(0.0904392898, 0, 0.635922313, 0)
find.Size = UDim2.new(0, 148, 0, 50)
find.Font = Enum.Font.GothamSemibold
find.Text = "Find"
find.TextColor3 = Color3.fromRGB(255, 255, 255)
find.TextSize = 20.000

local function copyPosition()
    setclipboard(pos.Text)
    Frame:Remove() -- Close the window
end

copy.MouseButton1Click:Connect(copyPosition)

local function makeFrameDraggable(frame)
    local UIS = game:GetService("UserInputService")
    local dragToggle = nil
    local dragSpeed = 0
    local dragInput = nil
    local dragStart = nil
    local dragPos = nil

    local function updateInput(input)
        local delta = input.Position - dragStart
        local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        game:GetService("TweenService"):Create(frame, TweenInfo.new(0.25), { Position = position }):Play()
    end

    frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
            dragToggle = true
            dragStart = input.Position
            startPos = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
        end
    end)

    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragToggle then
            updateInput(input)
        end
    end)
end

makeFrameDraggable(Frame)

find.MouseButton1Down:Connect(function()
    pos.Text = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
end)
