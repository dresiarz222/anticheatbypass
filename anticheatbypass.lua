local a = game:GetService("ReplicatedStorage"):WaitForChild("MainEvent")
local b = {"CHECKER_1", "CHECKER_2", "TeleportDetect", "OneMoreTime", "BreathingHAMON", "VirusCough"}
local c
c =
    hookmetamethod(
    game,
    "__namecall",
    function(...)
        local d = {...}
        local self = d[1]
        local e = getnamecallmethod()
        local f = getcallingscript()
        if e == "FireServer" and self == a and table.find(b, d[2]) then
            return
        end
        if not checkcaller() and getfenv(2).crash then
            hookfunction(
                getfenv(2).crash,
                function()
                end
            )
        end
        return c(...)
    end
)
