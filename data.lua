function repl(path)
  s,n = string.gsub(path, "__(.-)__", "__inserters-googly-eyes__")
  return s
end

local inserters = {"burner-inserter", "inserter" , "fast-inserter", "long-handed-inserter", "filter-inserter", "stack-inserter", "stack-filter-inserter"}

for index, i in ipairs(inserters) do
    data.raw["inserter"][i].hand_closed_picture.filename = repl(data.raw["inserter"][i].hand_closed_picture.filename)
    data.raw["inserter"][i].hand_closed_picture.hr_version.filename = repl(data.raw["inserter"][i].hand_closed_picture.hr_version.filename)
    data.raw["inserter"][i].hand_open_picture.filename = repl(data.raw["inserter"][i].hand_open_picture.filename)
    data.raw["inserter"][i].hand_open_picture.hr_version.filename = repl(data.raw["inserter"][i].hand_open_picture.hr_version.filename)
    for index, variation in ipairs(data.raw["corpse"][i .. "-remnants"].animation) do
        variation.filename = repl(variation.filename)
        variation.hr_version.filename = repl(variation.hr_version.filename)
    end
end

-- if mods["boblogistics"] then
--     local bobinserters = {"express-inserter", "express-filter-inserter", "express-stack-inserter", "express-stack-filter-inserter"}
--     for index, i in ipairs(bobinserters) do
--         data.raw["inserter"][i].hand_closed_picture.filename = repl(data.raw["inserter"][i].hand_closed_picture.filename)
--         data.raw["inserter"][i].hand_closed_picture.hr_version.filename = repl(data.raw["inserter"][i].hand_closed_picture.hr_version.filename)
--         data.raw["inserter"][i].hand_open_picture.filename = repl(data.raw["inserter"][i].hand_open_picture.filename)
--         data.raw["inserter"][i].hand_open_picture.hr_version.filename = repl(data.raw["inserter"][i].hand_open_picture.hr_version.filename)
--     end
-- end
