FACTION.name = "Wookie"
FACTION.description = "A tall hairy humanoid native to the dense tropical forest planet of Kashyyyk."
FACTION.color = Color(77, 38, 0)
FACTION.isDefault = false
FACTION.models = {"models/tfa/comm/gg/pm_sw_chewbacca.mdl"}

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)
	
	inventory:Add("bowcaster", 1)
	inventory:Add("cid", 1, {
		name = character:GetName(),
		id = id
	})
end

FACTION_WOOKIE = FACTION.index