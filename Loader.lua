-- Loader.lua for Unexpected-Hub
-- This loader fetches HiddenScript.lua from the private repo HiddenUnexpected

local HttpService = game:GetService("HttpService")

-- URL of your hidden script (raw GitHub URL)
local hiddenScriptURL = "https://raw.githubusercontent.com/Kishiaraki/HiddenUnexpected/main/HiddenScript.lua"

-- GitHub Personal Access Token (Read-only)
-- Replace with your token. Keep this secret.
local githubToken = "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"

local function loadHiddenScript()
    local headers = {
        ["Authorization"] = "token " .. githubToken
    }

    local success, result = pcall(function()
        local requestFunction = http_request or request or syn.request
        if not requestFunction then
            error("No HTTP request function found!")
        end

        local response = requestFunction({
            Url = hiddenScriptURL,
            Method = "GET",
            Headers = headers
        })

        if response.StatusCode == 200 then
            return response.Body
        else
            error("Failed to fetch hidden script. Status: " .. response.StatusCode)
        end
    end)

    if success and result then
        local func, err = loadstring(result)
        if func then
            func()
        else
            warn("Failed to load hidden script:", err)
        end
    else
        warn("Failed to fetch hidden script from private repo.")
    end
end

-- Run the hidden script
loadHiddenScript()
