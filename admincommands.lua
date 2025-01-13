local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/vFishyTurtle/SN-Lib/main/src'))()
local lib = Library:CreateWindow({Title = "YunexHub"})

-- Creating Main Tab
local t1 = lib:NewTab({Name = "Catching"})

-- Adding a Section
local s1 = t1:NewSection({Name = "Section"})

-- Adding a Toggle for Infinite Jump
s1:NewToggle({
    Name = "Inf Jump",  -- Changed name to Inf Jump
    default = false,
    callback = function(v)
        if v then
            -- Enable infinite jump
            local user = game.Players.LocalPlayer
            local humanoid = user.Character and user.Character:WaitForChild("Humanoid")
            if humanoid then
                humanoid.JumpHeight = 100  -- Increased jump height
                humanoid.PlatformStand = true  -- Disables platform standing to prevent falling
                game:GetService("UserInputService").InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.Space then
                        humanoid:ChangeState(Enum.HumanoidStateType.Physics)
                    end
                end)
            end
        else
            -- Disable infinite jump
            local user = game.Players.LocalPlayer
            local humanoid = user.Character and user.Character:WaitForChild("Humanoid")
            if humanoid then
                humanoid.JumpHeight = 50  -- Reset to default jump height
                humanoid.PlatformStand = false  -- Enable platform standing
            end
        end
    end,
})

-- Adding a Slider for Walk Speed
t1:NewSlider({
    Name = "Walk Speed",  -- Changed name to Walk Speed
    default = 16,  -- Default value for walk speed (default is 16 in Roblox)
    min = 0,  -- Min value for walk speed
    max = 100,  -- Max value for walk speed
    callback = function(v)
        -- Update the player's walk speed based on slider value
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
        print("Walk Speed:", v)
    end,
})

-- Adding a Button
t1:NewButton({
    Name = "Button Yay",
    callback = function()
        print("Button Yay clicked!")
    end,
})

-- Adding a Dropdown
s1:NewDropdown({
    Name = "Dropdown lol",
    options = {"Apple", "Banana", "Grape"},
    default = "Grape",
    callback = function(v)
        print("Dropdown selected:", v)
    end,
})

-- Adding Credits Tab
local creditsTab = lib:NewTab({Name = "Credits"})

-- Adding Credits Section
local creditsSection = creditsTab:NewSection({Name = "Credits"})

-- Adding Credits Button
creditsSection:NewButton({
    Name = "View Credits",
    callback = function()
        print("==== CREDITS ====")
        print("Developed by: kadencodes")
        print("Special Thanks: Community and Contributors")
        print("=================")
    end,
})
