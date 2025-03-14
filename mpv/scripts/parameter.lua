local mp = require 'mp'

function set_start_and_end()
    local url = mp.get_property("stream-open-filename")
    local start_time = mp.get_property_osd("start")

    local modified_url = url .. "?start=2023-06-19T16:50:00+05:00" .. start_time
    mp.set_property("stream-open-filename", modified_url)
end

mp.register_event("file-loaded", set_start_and_end)
