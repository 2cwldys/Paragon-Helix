FACTION.name = "Hutt Clan"
FACTION.description = "The Hutt Clan was one of the most powerfull criminal organisations during the Clone Wars, and ruled by the Grand Hutt Council."
FACTION.color = Color(0, 77, 0)
FACTION.isDefault = false
FACTION.models = {
	"models/hgn/swrp/swrp/hutt_01.mdl"
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