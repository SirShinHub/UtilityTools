local hamachi = Instance.new("ScreenGui")
local maingui = Instance.new("ImageLabel")
local cadit = Instance.new("TextLabel")
local PlessDragger = Instance.new("TextLabel")
local status2 = Instance.new("TextLabel")
local status1 = Instance.new("TextLabel")
local status = Instance.new("TextLabel")
local close = Instance.new("TextButton")
local active = Instance.new("TextButton")

hamachi.Name = "hamachi"
hamachi.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
hamachi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
hamachi.Parent = game.CoreGui

maingui.Name = "maingui"
maingui.Parent = hamachi
maingui.Active = true
maingui.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
maingui.BorderColor3 = Color3.fromRGB(27, 42, 53)
maingui.BorderSizePixel = 2
maingui.Position = UDim2.new(0.441869259, 0, 0.287937671, 0)
maingui.Size = UDim2.new(0, 184, 0, 140)
maingui.Image = "rbxassetid://3570695787"
maingui.ImageColor3 = Color3.fromRGB(20, 20, 20)
maingui.ScaleType = Enum.ScaleType.Slice
maingui.SliceCenter = Rect.new(100, 100, 100, 100)
maingui.SliceScale = 0.120

cadit.Name = "cadit"
cadit.Parent = maingui
cadit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
cadit.BackgroundTransparency = 1.000
cadit.BorderSizePixel = 0
cadit.Position = UDim2.new(0.184279397, 0, -0.00697697233, 0)
cadit.Size = UDim2.new(0, 115, 0, 34)
cadit.Font = Enum.Font.Unknown
cadit.Text = "By Chin#2542"
cadit.TextColor3 = Color3.fromRGB(255, 255, 127)
cadit.TextSize = 16.000

PlessDragger.Name = "PlessDragger"
PlessDragger.Parent = maingui
PlessDragger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlessDragger.BackgroundTransparency = 1.000
PlessDragger.BorderSizePixel = 0
PlessDragger.Position = UDim2.new(0.277577937, 0, 0.791918516, 0)
PlessDragger.Size = UDim2.new(0, 80, 0, 20)
PlessDragger.Font = Enum.Font.Unknown
PlessDragger.Text = "Turn On / Off Pless Key L"
PlessDragger.TextColor3 = Color3.fromRGB(255, 255, 127)
PlessDragger.TextSize = 16.000

status2.Name = "status2"
status2.Parent = maingui
status2.Active = true
status2.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
status2.BackgroundTransparency = 1.000
status2.BorderColor3 = Color3.fromRGB(0, 0, 0)
status2.BorderSizePixel = 0
status2.Position = UDim2.new(0.618452668, 0, 0.149351716, 0)
status2.Size = UDim2.new(0, 49, 0, 42)
status2.Visible = false
status2.Font = Enum.Font.FredokaOne
status2.Text = "True"
status2.TextColor3 = Color3.fromRGB(10, 255, 6)
status2.TextSize = 24.000
status2.TextStrokeTransparency = 0.000

status1.Name = "status1"
status1.Parent = maingui
status1.Active = true
status1.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
status1.BackgroundTransparency = 1.000
status1.BorderColor3 = Color3.fromRGB(0, 0, 0)
status1.BorderSizePixel = 0
status1.Position = UDim2.new(0.618831813, 0, 0.15097177, 0)
status1.Size = UDim2.new(0, 49, 0, 42)
status1.Font = Enum.Font.FredokaOne
status1.Text = "False"
status1.TextColor3 = Color3.fromRGB(255, 0, 4)
status1.TextSize = 24.000
status1.TextStrokeTransparency = 0.000

status.Name = "status"
status.Parent = maingui
status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
status.BackgroundTransparency = 1.000
status.BorderColor3 = Color3.fromRGB(0, 0, 0)
status.BorderSizePixel = 0
status.Position = UDim2.new(0.00287893554, 0, 0.12284077, 0)
status.Size = UDim2.new(0, 114, 0, 50)
status.Font = Enum.Font.FredokaOne
status.Text = "Status ="
status.TextColor3 = Color3.fromRGB(255, 255, 255)
status.TextSize = 24.000
status.TextStrokeTransparency = 0.000

close.Name = "close"
close.Parent = maingui
close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
close.BorderColor3 = Color3.fromRGB(111, 111, 111)
close.BorderSizePixel = 2
close.Position = UDim2.new(0.707339764, 0, 0.480653375, 0)
close.Size = UDim2.new(0, 46, 0, 30)
close.Font = Enum.Font.Unknown
close.Text = "X"
close.TextColor3 = Color3.fromRGB(255, 255, 255)
close.TextSize = 30.000

active.Name = "active"
active.Parent = maingui
active.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
active.BorderColor3 = Color3.fromRGB(120, 120, 120)
active.BorderSizePixel = 2
active.Position = UDim2.new(0.0681371242, 0, 0.485857725, 0)
active.Size = UDim2.new(0, 99, 0, 30)
active.Font = Enum.Font.Unknown
active.Text = "Active"
active.TextColor3 = Color3.fromRGB(255, 255, 255)
active.TextSize = 24.000

-- Scripts:

local function UHGZIKW_fake_script() -- maingui.dragger 
	local script = Instance.new('LocalScript', maingui)

	function PopupGui()
	
	if script.Parent.Visible == true then script.Parent.Visible = false
	
	else script.Parent.Visible = true
	
	end
	
	end
	
	
	
	game:GetService("UserInputService").InputBegan:Connect(function(key)
	
	 if key.KeyCode == Enum.KeyCode.L then
	
	PopupGui()
	
	end
	
	end)
	
end
coroutine.wrap(UHGZIKW_fake_script)()
local function PRTSVGY_fake_script() -- maingui.rainbow 
	local script = Instance.new('LocalScript', maingui)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
	 script.Parent.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)
	 
	 counter = counter + 0.05
	end
end
coroutine.wrap(PRTSVGY_fake_script)()
local function AUJFPJ_fake_script() -- close.LocalScript 
	local script = Instance.new('LocalScript', close)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(AUJFPJ_fake_script)()
local function HUCPR_fake_script() -- active.scat 
	local script = Instance.new('LocalScript', active)

	local jumploop = false
	local tx = script.Parent.Parent
	
	local function ToggleJumpLoop()
		jumploop = not jumploop
		if jumploop then
			tx.status1.Visible = false
			tx.status2.Visible = true
		else
			tx.status1.Visible = true
			tx.status2.Visible = false
		end
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		ToggleJumpLoop()
	end)
	
	while true do
		if jumploop then
		
local args = {
    [1] = "Forest2"
}

game:GetService("ReplicatedStorage").Events.PlayerPressedKeyOnEgg:FireServer(unpack(args))
		end	
    wait(0.1)
	end
	
end
coroutine.wrap(HUCPR_fake_script)()
