local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/vFishyTurtle/SN-Lib/main/src'))()
local lib = Library:CreateWindow({Title = "YunexHub"})

-- Creating Main Tab
local t1 = lib:NewTab({Name = "Catching"})

-- Adding a Section
local s1 = t1:NewSection({Name = "Section"})

-- Adding a Toggle
s1:NewToggle({
    Name = "Magnets",
    default = false,
    callback = function(v)
        print("Magnets:", v)
    end,
})

-- Adding a Slider
t1:NewSlider({
    Name = "Magnets Range",
    default = 50,
    min = 0,
    max = 100,
    callback = function(v)
        print("Magnets Range:", v)
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
