local systemOrder = {
    "playerJumping",
    "playerMovement",
    "animation",
    "bobbing",
    "entitySpawner",
    "gravity",
    "particleSpawner",
    "physics",
    "playerAnimation",
    "sandTimer",
    "wobbling",
}

local allSystems = {}

for _, path in ipairs(systemOrder) do
    table.insert(allSystems, require("systems." .. path))
end

return allSystems