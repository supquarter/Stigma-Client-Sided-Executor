--Made by supquarter
--Every code has a step-by-step explanation so you dont have to worry about what it is

-- Instances:

local SpinningStigma = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")

--Properties:

SpinningStigma.Name = "SpinningStigma"
SpinningStigma.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SpinningStigma.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageLabel.Parent = SpinningStigma
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0298295449, 0, 0.817839205, 0)
ImageLabel.Size = UDim2.new(0, 100, 0, 100)
ImageLabel.Image = "http://www.roblox.com/asset/?id=90264708888633"

-- Scripts:

local function JQWIDQ_fake_script() -- ImageLabel.LocalScript 
	local script = Instance.new('LocalScript', ImageLabel)

	local TweenService = game:GetService("TweenService")
	local image = script.Parent

	if image then
		-- Ensure the image starts at the exact center of the screen
		image.Position = UDim2.new(0.5, -image.Size.X.Offset / 2, 0.5, -image.Size.Y.Offset / 2)

		-- Wait 2 seconds before moving
		wait(1)

		-- Tween to move towards the bottom-left
		local moveInfo = TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out) -- 1.5 seconds smooth movement
		local moveGoal = {Position = UDim2.new(0, 50, 1, -150)} -- Moves to bottom-left
		local moveTween = TweenService:Create(image, moveInfo, moveGoal)

		-- Tween to rotate infinitely
		local rotateInfo = TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1) -- Infinite loop
		local rotateGoal = {Rotation = 360}
		local rotateTween = TweenService:Create(image, rotateInfo, rotateGoal)

		-- Start moving first, then start spinning
		moveTween:Play()
		moveTween.Completed:Connect(function() -- Once move finishes, start spinning
			rotateTween:Play()
		end)
	else
		warn("ImageLabel not found! Check your GUI setup.")
	end

end
coroutine.wrap(JQWIDQ_fake_script)()

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255,255,255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, -162, -0.2, 0) -- Start off-screen at the top center
Frame.Size = UDim2.new(0, 325, 0, 108)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.079, 0)
TextLabel.Size = UDim2.new(0, 325, 0, 51)
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.Text = "[Stigma]"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 35.000

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0.482, 0)
TextLabel_2.Size = UDim2.new(0, 325, 0, 42)
TextLabel_2.Font = Enum.Font.Gotham
TextLabel_2.Text = "Loaded to Client, Enjoy!"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextSize = 24.000

UICorner.Parent = Frame

-- Scripts:

local function AnimateFrame()
	local frame = Frame

	-- Move into position (slightly below the top, centered)
	frame:TweenPosition(UDim2.new(0.5, -162, 0.1, 0), "Out", "Quart", 2, false)
	wait(3)

	-- Move out of the screen upwards
	frame:TweenPosition(UDim2.new(0.5, -162, -0.2, 0), "In", "Quart", 2, false)
	wait(2)

	frame:Destroy()
end

coroutine.wrap(AnimateFrame)()

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Executor GUI

local ExecutorScreen = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local CodeBox = Instance.new("TextBox")
local ExecuteButton = Instance.new("TextButton")
local ClearButton = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")
local UICornerMain = Instance.new("UICorner")
local UICornerBox = Instance.new("UICorner")
local UICornerExec = Instance.new("UICorner")
local UICornerClear = Instance.new("UICorner")

ExecutorScreen.Name = "StigmaExecutor"
ExecutorScreen.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ExecutorScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Parent = ExecutorScreen
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 400, 0, 300)
MainFrame.Active = true

UICornerMain.Parent = MainFrame

TitleLabel.Parent = MainFrame
TitleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.BackgroundTransparency = 1.000
TitleLabel.Size = UDim2.new(1, 0, 0, 35)
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.Text = "  Stigma Executor"
TitleLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel.TextSize = 16.000
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

CodeBox.Parent = MainFrame
CodeBox.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
CodeBox.Position = UDim2.new(0, 10, 0, 45)
CodeBox.Size = UDim2.new(1, -20, 1, -95)
CodeBox.Font = Enum.Font.Code
CodeBox.MultiLine = true
CodeBox.Text = "-- Write your fucking code here\n"
CodeBox.TextColor3 = Color3.fromRGB(50, 50, 50)
CodeBox.TextSize = 14.000
CodeBox.TextXAlignment = Enum.TextXAlignment.Left
CodeBox.TextYAlignment = Enum.TextYAlignment.Top
CodeBox.ClearTextOnFocus = false
UICornerBox.Parent = CodeBox

ExecuteButton.Parent = MainFrame
ExecuteButton.BackgroundColor3 = Color3.fromRGB(235, 235, 235)
ExecuteButton.Position = UDim2.new(0, 10, 1, -40)
ExecuteButton.Size = UDim2.new(0, 100, 0, 30)
ExecuteButton.Font = Enum.Font.GothamSemibold
ExecuteButton.Text = "Execute"
ExecuteButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ExecuteButton.TextSize = 14.000
UICornerExec.Parent = ExecuteButton

ClearButton.Parent = MainFrame
ClearButton.BackgroundColor3 = Color3.fromRGB(235, 235, 235)
ClearButton.Position = UDim2.new(0, 120, 1, -40)
ClearButton.Size = UDim2.new(0, 100, 0, 30)
ClearButton.Font = Enum.Font.GothamSemibold
ClearButton.Text = "Clear"
ClearButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ClearButton.TextSize = 14.000
UICornerClear.Parent = ClearButton

CloseButton.Parent = MainFrame
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.BackgroundTransparency = 1.000
CloseButton.Position = UDim2.new(1, -35, 0, 5)
CloseButton.Size = UDim2.new(0, 30, 0, 25)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(120, 120, 120)
CloseButton.TextSize = 16.000

ExecuteButton.MouseButton1Click:Connect(function()
	local scriptText = CodeBox.Text
	local func, err = loadstring(scriptText)
	if func then
		local success, execErr = pcall(func)
		if not success then
			warn("Execution Error: " .. tostring(execErr))
		end
	else
		warn("Syntax Error: " .. tostring(err))
	end
end)

ClearButton.MouseButton1Click:Connect(function()
	CodeBox.Text = ""
end)

CloseButton.MouseEnter:Connect(function()
	CloseButton.TextColor3 = Color3.fromRGB(255, 50, 50)
end)

CloseButton.MouseLeave:Connect(function()
	CloseButton.TextColor3 = Color3.fromRGB(120, 120, 120)
end)

CloseButton.MouseButton1Click:Connect(function()
	ExecutorScreen:Destroy()
	local PlayerGui = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
	if PlayerGui then
		local spinning = PlayerGui:FindFirstChild("SpinningStigma")
		if spinning then
			spinning:Destroy()
		end
	end
end)

-- Custom Drag Logic
local UserInputService = game:GetService("UserInputService")

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

MainFrame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = MainFrame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

MainFrame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)
