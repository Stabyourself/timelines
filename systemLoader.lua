local files = love.filesystem.getDirectoryItems("systems")

local allSystems = {}

for _, path in ipairs(files) do
    path = path:sub(1, -5)
    table.insert(allSystems, require("systems." .. path))
end

return allSystems