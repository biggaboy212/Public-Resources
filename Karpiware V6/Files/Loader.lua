local FileTarget = "https://raw.githubusercontent.com/biggaboy212/Public-Resources/main/Karpiware%20V6/"
local Files = {
    {PlaceId = 621129760, File = "Kat.lua"}
}

local function loadFile(placeId)
    for _, file in ipairs(Files) do
        if file.PlaceId == placeId then
            local url = FileTarget .. file.File
            local success, result = pcall(function()
                return game:HttpGet(url)
            end)
            
            if success then
                local func, loadError = loadstring(result)
                if func then
                    pcall(func)
                end
            end
            return
        end
    end
end

loadFile(game.PlaceId)
