defineObject{
 	name = "legionary_shield",
	baseObject = "base_item",
	components = {
		{
			class = "Model",
			model = "mod_assets/import_skeletonWarrior/models/items/skeleton_shield.fbx",
		},
		{
			class = "Item",
			uiName = "Legionary Shield",
			gfxAtlas = "mod_assets/import_skeletonWarrior/textures/gui/items_atlas.dds",
			gfxIndex = 0,
			weight = 6.5,
			traits = { "shield" },
		},
		{
			class = "EquipmentItem",
			slot = "Weapon",
			evasion = 5,
		},
	},
}
