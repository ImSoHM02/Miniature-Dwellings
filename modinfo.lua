description = 
[[
A Yurt and Tipi, beautifully rendered by Silentine, that offer increased durability and regeneration properties. 
Items are located in the Structures tab. 

-v1.0-
Cleaned up code. Updated to latest API changes. 
]]

name                        = "Miniature Dwellings"
author                      = "Im So HM02 (Original by Draxanoth)"
version                     = "1.0"
forumthread                 = ""
icon                        = "modicon.tex"
icon_atlas                  = "modicon.xml"
api_version                 = 10
all_clients_require_mod     = true
dst_compatible              = true
client_only_mod             = false
--Configs

local LowMedHigh = {{description = "Low", data = "low"}, {description = "Medium", data = "medium"}, {description = "High", data = "high"}}

local LowMedHighInf = {{description = "Low", data = "low"}, {description = "Medium", data = "medium"}, 
{description = "High", data = "high"}, {description = "To Infinity!", data = "infinite"}}

local Empty = {{description = "", data = 0}}

local function Title(title) --Allows use of an empty label as a header
return {name=title, options=Empty, default=0,}
end

local SEPARATOR = Title("")

configuration_options =
{
    Title("Yurt"),
    {
        name    = "miniatureyurtUses",
        label   = "Yurt Uses",
        options = LowMedHighInf,
        default = "medium",
    },

    {
        name    = "miniatureyurtSanity",
        label   = "Yurt Sanity Gained",
        options = LowMedHigh,
        default = "high",
    },

    {
        name    = "miniatureyurtHunger",
        label   = "Yurt Hunger Lost",
        options = LowMedHigh,
        default = "medium",
    },

    {
        name    = "miniatureyurtHealth",
        label   = "Yurt Health Gained",
        options = LowMedHigh,
        default = "high",
    },

    Title("Tipi"),
    {
        name    = "miniaturetipiUses",
        label   = "Tipi Uses",
        options = LowMedHighInf,
        default = "medium",
    },

    {
        name    = "miniaturetipiSanity",
        label   = "Tipi Sanity Gained",
        options = LowMedHigh,
        default = "medium",
    },

    {
        name    = "miniaturetipiHunger",
        label   = "Tipi Hunger Lost",
        options = LowMedHigh,
        default = "low",
    },

    {
        name    = "miniaturetipiHealth",
        label   = "Tipi Health Gained",
        options = LowMedHigh,
        default = "medium",
    },
}