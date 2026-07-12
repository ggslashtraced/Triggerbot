local Players = game:GetService("Players")
local player = Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ScriptDownUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.fromOffset(420, 190)
frame.Position = UDim2.fromScale(0.5, 0.5)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
frame.BorderSizePixel = 0
frame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 14)
corner.Parent = frame

local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(70, 70, 85)
stroke.Thickness = 1.5
stroke.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -30, 0, 55)
title.Position = UDim2.fromOffset(15, 15)
title.BackgroundTransparency = 1
title.Text = "Script currently down"
title.TextColor3 = Color3.fromRGB(255, 90, 90)
title.Font = Enum.Font.GothamBold
title.TextSize = 26
title.Parent = frame

local message = Instance.new("TextLabel")
message.Size = UDim2.new(1, -40, 0, 65)
message.Position = UDim2.fromOffset(20, 70)
message.BackgroundTransparency = 1
message.Text = "To buy the source, DM 0l9f on Discord."
message.TextWrapped = true
message.TextColor3 = Color3.fromRGB(220, 220, 225)
message.Font = Enum.Font.Gotham
message.TextSize = 18
message.Parent = frame

local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.fromOffset(120, 38)
closeButton.Position = UDim2.new(0.5, -60, 1, -50)
closeButton.BackgroundColor3 = Color3.fromRGB(55, 55, 68)
closeButton.Text = "Close"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Font = Enum.Font.GothamSemibold
closeButton.TextSize = 16
closeButton.AutoButtonColor = true
closeButton.Parent = frame

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 9)
buttonCorner.Parent = closeButton

closeButton.MouseButton1Click:Connect(function()
	screenGui:Destroy()
end)
