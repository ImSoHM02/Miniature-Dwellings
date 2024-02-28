Assets 						= 
{
	Asset("ATLAS", "images/inventoryimages/mini_yurt.xml"),
	Asset("IMAGE", "images/inventoryimages/mini_yurt.tex"),
    Asset("ATLAS", "minimap/mini_yurt.xml" ),
	Asset("ATLAS", "images/inventoryimages/mini_tipi.xml"),
	Asset("IMAGE", "images/inventoryimages/mini_tipi.tex"),
    Asset("ATLAS", "minimap/mini_tipi.xml" ),
}

PrefabFiles 				= {"advanced_dwellings"}

--Variables
local STRINGS 				= GLOBAL.STRINGS
local Recipe 				= GLOBAL.Recipe
local TECH 					= GLOBAL.TECH
local Ingredient 			= GLOBAL.Ingredient

--Load Config Data
GLOBAL.miniatureyurtUses 	= GetModConfigData("miniatureyurtUses")
GLOBAL.miniatureyurtSanity 	= GetModConfigData("miniatureyurtSanity")
GLOBAL.miniatureyurtHunger 	= GetModConfigData("miniatureyurtHunger")
GLOBAL.miniatureyurtHealth 	= GetModConfigData("miniatureyurtHealth")

GLOBAL.miniaturetipiUses	= GetModConfigData("miniaturetipiUses")
GLOBAL.miniaturetipiSanity 	= GetModConfigData("miniaturetipiSanity")
GLOBAL.miniaturetipiHunger 	= GetModConfigData("miniaturetipiHunger")
GLOBAL.miniaturetipiHealth 	= GetModConfigData("miniaturetipiHealth")

--Add Crafting Recipes to Menu
AddRecipe2("mini_yurt", 
{
	Ingredient("silk", 12), 
	Ingredient("log", 8), 
	Ingredient("rope", 6)
}, 
TECH.SCIENCE_TWO, "mini_yurt_placer", {"STRUCTURES"})
RegisterInventoryItemAtlas("images/inventoryimages/mini_yurt.xml", "mini_yurt.tex")

AddRecipe2("mini_tipi", 
{
	Ingredient("silk", 8), 
	Ingredient("log", 10), 
	Ingredient("rope", 4)
}, 
TECH.SCIENCE_TWO, "mini_tipi_placer", {"STRUCTURES"})
RegisterInventoryItemAtlas("images/inventoryimages/mini_tipi.xml", "mini_tipi.tex")

--Add Graphics for Minimap Icons
AddMinimapAtlas("images/inventoryimages/mini_tipi.xml")
	
AddMinimapAtlas("images/inventoryimages/mini_yurt.xml")
