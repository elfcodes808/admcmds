local validKeys = { -- List of valid keys
    "KEY123",  -- Example keys
    "PREMIUM456",
    "VIP789"
}

-- User input for key
insertKey = "Put your key here"  -- User will set their key here

-- Validate the key
if not insertKey then
    error("No key found! Please set 'insertKey' with your valid key.")
end

local function isValidKey(inputKey)
    for _, key in ipairs(validKeys) do
        if key == inputKey then
            return true
        end
    end
    return false
end

if isValidKey(insertKey) then
    print("Key validated! Loading script...")
    -- Load your main script (replace with your actual script URL)
    loadstring(game:HttpGet('https://raw.githubusercontent.com/elfcodes808/admcmds/refs/heads/main/admincommands.lua'))()
else
    error("Invalid key! Access denied.")
end
