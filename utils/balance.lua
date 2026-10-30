if settings.startup["ta-maxium-tier"].value == "crust" then
    data.raw["recipe"]["moho_extractor"].hidden = true
    data.raw["technology"]["moho_extractor"].hidden = true
    data.raw["recipe"]["mantle_extractor"].hidden = true
    data.raw["technology"]["mantle_extractor"].hidden = true
elseif settings.startup["ta-maxium-tier"].value == "moho" then
    data.raw["recipe"]["mantle_extractor"].hidden = true
    data.raw["technology"]["mantle_extractor"].hidden = true
elseif settings.startup["ta-maxium-tier"].value == "mantle" then
    return
end