-- Loader.lua for Unexpected-Hub

-- Your private script URL (raw file from HiddenUnexpected)
local hiddenScriptURL = "https://raw.githubusercontent.com/Kishiaraki/HiddenUnexpected/main/HiddenScript.lua"

-- Function to safely load the hidden script
local function loadHiddenScript()
    local success, result = pcall(function()
        return game:HttpGet(hiddenScriptURL)
    end)
    
    if success and result then
        local func, err = loadstring(result)
        if func then
            func()
        else
            warn("Failed to load hidden script:", err)
        end
    else
        warn("Failed to fetch hidden script from URL.")
    end
end

-- Execute the hidden script
loadHiddenScript()
