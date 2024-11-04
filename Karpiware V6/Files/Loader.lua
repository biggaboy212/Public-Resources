local FileTarget = "https://raw.githubusercontent.com/biggaboy212/Public-Resources/main/Karpiware%20V6/Files/"
local Files = {
    [621129760] = "Kat.lua"
}

local function loadFile(placeId)
    local fileName = Files[placeId]
    if fileName then
        local url = FileTarget .. fileName
        local success, result = pcall(game.HttpGet, game, url)
        
        if success then
            local func, loadError = loadstring(result)
            if func then
                pcall(func)
            end
        end
    end
end

loadFile(game.PlaceId)