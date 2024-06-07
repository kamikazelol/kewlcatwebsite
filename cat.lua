local img = get("catimg")
local button = get("newbutton")
local b1 = get("b1")
local b2 = get("b2")
local b3 = get("b3")
rtext = get("rtext")
local id = "no"
function generateImage()
    local res = fetch({
        url = "https://streetcat.3feds.lol/capture?id=" .. id,
        method = "GET",
        headers = { ["Content-Type"] = "application/json" },
        body = ""
    })

    img.set_source(res["url"])
end

b1.on_click(function ()
    id = "4258783365322591678"
    rtext.set_content("Current camera: Happy canteen")
    generateImage()
end)

b2.on_click(function ()
    id = "4291094747934800009"
    rtext.set_content("Current camera: Lucky 7/11")
    generateImage()
end)

b3.on_click(function ()
    id = "4412424173050749216"
    rtext.set_content("Current camera: Asus Restaurant")
    generateImage()
end)

if id ~= "no" then

end

button.on_click(function ()
    if id ~= "no" then
        generateImage()
    end
end)
