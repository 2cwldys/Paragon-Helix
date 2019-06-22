FACTION.name = "Jawa"
FACTION.description = "A short hooded figure known for hunting scraps and parts."
FACTION.color = Color(153, 77, 0)
FACTION.isDefault = false
FACTION.models = {"models/player/b4p/b4p_jawa.mdl"}

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

	inventory:Add("cid", 1, {
		name = character:GetName(),
		id = id
	})
end

FACTION_JAWA = FACTION.index