local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local HttpService = game:GetService("HttpService")

local screenGui = Instance.new("ScreenGui")
screenGui.ResetOnSpawn = false
screenGui.Parent = PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 120)
frame.Position = UDim2.new(0.5, -150, 0.5, -60)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Parent = screenGui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, -20, 0, 50)
textLabel.Position = UDim2.new(0, 10, 0, 10)
textLabel.Text = "Join Discord for new script!"
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.BackgroundTransparency = 1
textLabel.Font = Enum.Font.GothamBold
textLabel.TextScaled = true
textLabel.Parent = frame

local invite = "https://discord.gg/pUES8szS7f"
local inviteLabel = Instance.new("TextLabel")
inviteLabel.Size = UDim2.new(1, -20, 0, 30)
inviteLabel.Position = UDim2.new(0, 10, 0, 60)
inviteLabel.Text = invite
inviteLabel.TextColor3 = Color3.fromRGB(0, 255, 255)
inviteLabel.BackgroundTransparency = 1
inviteLabel.Font = Enum.Font.Gotham
inviteLabel.TextScaled = true
inviteLabel.Parent = frame

local copyButton = Instance.new("TextButton")
copyButton.Size = UDim2.new(0, 100, 0, 25)
copyButton.Position = UDim2.new(0.5, -50, 1, -35)
copyButton.Text = "Copy"
copyButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
copyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
copyButton.Font = Enum.Font.GothamBold
copyButton.TextScaled = true
copyButton.Parent = frame

local function copyToClipboard()
    if setclipboard then
        setclipboard(invite)
    elseif ClipboardService then
        ClipboardService:SetClipboard(invite)
    end
end

copyButton.MouseButton1Click:Connect(copyToClipboard)
copyToClipboard()
