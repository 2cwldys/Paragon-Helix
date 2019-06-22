FACTION.name = "Droids"
FACTION.description = "Various droids of all kinds."
FACTION.color = Color(89, 89, 89)
FACTION.isDefault = false
FACTION.models = {
	"models/hgn/swrp/swrp/droid_c3po.mdl",
	"models/hgn/swrp/swrp/droid_ge3.mdl",
	"models/hgn/swrp/swrp/droid_hk-47.mdl",
	"models/hgn/swrp/swrp/droid_imp.mdl",
	"models/hgn/swrp/swrp/droid_mining.mdl",
	"models/hgn/swrp/swrp/droid_t3m4.mdl",
	"models/hgn/swrp/swrp/droid_warbot.mdl"
}

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)
	
	inventory:Add("cid", 1, {
		name = character:GetName(),
		id = id
	})
end

FACTION_TUSKEN = FACTION.index