-- Live.lua

local function seekToLive()
    local duration = mp.get_property_number("duration")
    local position = mp.get_property_number("time-pos")
    local livePoint = duration - 5 -- Seek to 5 seconds before the end for a live feel
    
    if position < livePoint then
        mp.commandv("seek", livePoint, "absolute+exact")
    end
end

mp.add_key_binding("j", "live", seekToLive)

