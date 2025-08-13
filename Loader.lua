-- Loader.lua
-- This will fetch and execute your obfuscated HiddenScript.lua from your HiddenUnexpected repo

local success, err = pcall(function()
    -- URL of your obfuscated HiddenScript.lua in HiddenUnexpected repo
    local url = "https://raw.githubusercontent.com/Kishiaraki/HiddenUnexpected/main/HiddenScript.lua"

    -- Fetch the script
    local code = game:HttpGet(url)

    -- Execute the script
    loadstring(code)()
end)

if not success then
    warn("Failed to load HiddenScript.lua: "..err)
end
