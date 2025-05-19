if settings.startup["electric-furnace-as-assembling-machine-all-furnaces"].value then
  for name, furnace in pairs(data.raw.furnace) do
    if string.find(name, "furnace") then
      furnace.type = "assembling-machine"
      data.raw.furnace[name] = nil
      data:extend{furnace}
    end
  end
elseif data.raw.furnace["electric-furnace"] then
  local electric_furnace = data.raw.furnace["electric-furnace"]
  electric_furnace.type = "assembling-machine"
  data.raw.furnace["electric-furnace"] = nil
  data:extend{electric_furnace}
end