FACTION.name = "Jedi"
FACTION.description = "A jedi, trained in the arts of the force, the lightsaber, and excel in monastic meritocracy and spiritual enlightenment through the force. They are the defenders of peace."
FACTION.color = Color(160, 214, 89, 255)
FACTION.isDefault = false

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

	inventory:Add("cid", 1, {
		name = character:GetName(),
		id = id
	})
end

FACTION_JEDI = FACTION.index
