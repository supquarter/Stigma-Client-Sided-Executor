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
TextLabel_2.Text = "Attached to Client, Enjoy!"
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
