local acFlags = {
    "CHECKER_1",
    "CHECKER_2",
    "VirusCough",
    "TeleportDetect",
    "OneMoreTime",
    "BreathingHAMON",
}

local old; old = hookmetamethod(game,"__namecall",function(...)
    local args = {...}
    if table.find(acFlags,args[2]) then
        return
    end
    return old(...)
end)
