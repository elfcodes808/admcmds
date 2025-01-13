-- URL of your main script (admincommands.lua)
local scriptUrl = "https://raw.githubusercontent.com/elfcodes808/admcmds/refs/heads/main/admincommands.lua"

-- List of valid keys (you can expand this list with your own keys)
local validKeys = {
    "KEY123", 
    "PREMIUM456", 
    "VIP789"
}

-- Function to check if the entered key is valid
local function isValidKey(inputKey)
    for _, key in ipairs(validKeys) do
        if key == inputKey then
            return true
        end
    end
    return false
end

-- Function to create and show the key input window
local function showKeyInputWindow()
    -- Create a simple GUI with an input box for the key
    local screenGui = Instance.new("ScreenGui")
    local frame = Instance.new("Frame")
    local textBox = Instance.new("TextBox")
    local submitButton = Instance.new("TextButton")
    local messageLabel = Instance.new("TextLabel")

    -- Set properties for the window and elements
    screenGui.Parent = game.Players.LocalPlayer.PlayerGui
    frame.Parent = screenGui
    frame.Size = UDim2.new(0, 400, 0, 200)
    frame.Position = UDim2.new(0.5, -200, 0.5, -100)
    frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    frame.BackgroundTransparency = 0.5

    textBox.Parent = frame
    textBox.Size = UDim2.new(0, 300, 0, 50)
    textBox.Position = UDim2.new(0.5, -150, 0.3, 0)
    textBox.PlaceholderText = "Enter your key"
    textBox.BackgroundTransparency = 0.5
    textBox.TextColor3 = Color3.fromRGB(255, 255, 255)

    submitButton.Parent = frame
    submitButton.Size = UDim2.new(0, 100, 0, 50)
    submitButton.Position = UDim2.new(0.5, -50, 0.7, 0)
    submitButton.Text = "Submit Key"

    messageLabel.Parent = frame
    messageLabel.Size = UDim2.new(0, 300, 0, 50)
    messageLabel.Position = UDim2.new(0.5, -150, 0.5, 0)
    messageLabel.Text = "Please enter your key"
    messageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

    -- Button click event
    submitButton.MouseButton1Click:Connect(function()
        local enteredKey = textBox.Text
        if isValidKey(enteredKey) then
            messageLabel.Text = "Key validated! Loading script..."
            -- Load the main script
            loadstring(game:HttpGet(scriptUrl))()
            screenGui:Destroy()  -- Close the window after loading the script
        else
            messageLabel.Text = "Invalid key! Try again later."
            wait(2)
            messageLabel.Text = "Please enter your key"
        end
    end)
end

-- First, load the main script (it triggers the key window)
loadstring(game:HttpGet(scriptUrl))()

-- Then show the key input window
showKeyInputWindow()
