FACTION.name = "Tusken Raider"
FACTION.description = "Tusken Raiders, less formally referred to as Sand People or simply as Tuskens, were a culture of nomadic, primitive sentients indigenous to Tatooine, where they were often hostile to local settlers."
FACTION.color = Color(255, 224, 102)
FACTION.isDefault = false
FACTION.models = {"models/zyan7259/zusken_raider_player/zusken_raider_player.mdl"}

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