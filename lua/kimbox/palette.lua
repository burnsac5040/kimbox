---@class KimboxBGs
local bgs = {
    burnt_coffee = "#231A0C",
    cannon = "#221A02",
    used_oil = "#221A0F",
    deep = "#0F111B",
    zinnwaldite = "#291804",
    eerie = "#1C0B28",
}

bgs.medium = bgs.burnt_coffee
bgs.ocean = bgs.cannon
bgs.vscode = bgs.used_oil
bgs.chinese_black = bgs.deep
bgs.darker = bgs.zinnwaldite

---@class KimboxFGs
---@field bg0 string
local fgs = {
    none = "none",
    bg1 = "#39260E",
    bg2 = "#362712",
    bg3 = bgs.zinnwaldite,
    bg4 = "#5E452B",
    bg5 = "#271e02",
    --
    fg0 = "#D9AE80",
    fg1 = "#7E602C",
    fg2 = "#5E452B",
    fg3 = "#C2A383",
    fg4 = "#E8C097",
    fg5 = "#DFBF8E",
    ----------------------------------------------------------------------------
    black = "#000000",
    red = "#EF1D55",
    magenta = "#A06469",
    orange = "#FF5813",
    green = "#819C3B",
    yellow = "#FF9500",
    aqua = "#7EB2B1",
    blue = "#4C96A8",
    purple = "#98676A",
    --
    philippine_green = "#088649",
    sea_green = "#77A172",
    russian_green = "#689D6A",
    jade_green = "#2AB074",
    morning_blue = "#83A598",
    jelly_bean_blue = "#418292",
    slate_grey = "#719190",
    aftercare = "#88C0D0",
    tuscan_red = "#7E5053",
    purple_taupe = "#4F3552",
    amaranth_purple = "#733E8B",
    lusty_lavender = "#945EB8",
    deep_lilac = "#A25BC4",
    heliotrope = "#D484FF",
    vista_blue = "#7E9CD8",
    ube = "#7E82CC",
    oni_violet = "#957FB8",
    paisley_purple = "#8E77B3",
    amethyst = "#938AA9",
    capri_fashion_pink = "#AF85A0",
    drama_violet = "#BB80B3",
    victorian_violet = "#B279A7",
    cure_all = "#A76C8C",
    old_rose = "#BD798B",
    puce = "#D3869B",
    salmon = "#EA6962",
    wave_red = "#E46876",
    peach_red = "#FF5D62",
    infra_red = "#F14A68",
    teaberry = "#DC3958",
    fuzzy_wuzzy = "#CC6666",
    glorious_sunset = "#FE8019",
    surimi_orange = "#FFA066",
    jasper_orange = "#E78A4E",
    ----------------------------------------------------------------------------
    cranberry_sauce = "#A43A57",
    watermelon = "#EC5F91",
    begonia = "#FF747C",
    middle_green_yellow = "#A3B95A",
    deep_saffron = "#F79A32",

    gleeful = "#99BE7D",
    family_tree = "#A4B494",
    heart_potion = "#AD7EB7",
    ponceau = "#F55B76",
    nectarous_nectarine = "#DE5662",
    carnation = "#F77B91",
    gorse_yellow_orange = "#EB9938",
    dried_flower = "#792359",
    pretty_prune = "#6B2D5C",

    dark_electric_blue = "#586081",
    coconut = "#9A5534",
    russet = "#79491D",
    brown_chocolate = "#621A3C",
    russian_violet = "#311D55",
    dark_purple = "#471337",

    army_green = "#445321", -- "#4c5c25",
    vivid_burgundy = "#961134",
    royal_brown = "#543739",
    royal_pine = "#325C59", -- dark_slate_grey
    ----------------------------------------------------------------------------
    -- These are duplicates because they are both used and might be changed at some point
    coyote_brown = "#7E602C",
    coyote_brown1 = "#7E602C",
    grullo_grey = "#A89984",
    philippine_silver = "#B2B2B2",
    wenge_grey = "#625A5A",
    beaver = "#A0936A",
    light_taupe = "#AF8D6E",

    --  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    carbon_fiber = "#2F2D2E",
    wenge_black = "#41292C",
    vivid_cerise = "#D72483",
    diva_pink = "#FD3E81",

    -- bats_blood = "#F0386B",
    -- fiery_rose = "#FF5376",
    -- pale_petunia = "#F8C0C8",
    birdseed = "#E2C290",

    ballerina_tutu = "#C96480",
    wild_party = "#B47878",
    applegate_park = "#B1AE91",
    velvet_leaf = "#95BF8F",
    jade_lime = "#99D17B",

    rose_gold = "#B76C77",
    melanzane = "#34252F",
    dusk_wine = "#9E7682",
    orchid_grey = "#605770",
    garden_violet = "#847996",
    vintage_blue = "#88B7B5",
    pastel_meadow = "#A7CAB1",
}

fgs.diff_add = fgs.army_green
fgs.diff_delete = fgs.vivid_burgundy
fgs.diff_change = fgs.royal_brown
fgs.diff_text = fgs.royal_pine

-- Legacy
fgs.light_red = fgs.fuzzy_wuzzy
fgs.cyan = fgs.aqua

return {
    colors = fgs,
    bgs = bgs,
}
