FACTION.name = "Jedi"
FACTION.description = "A jedi, trained in the arts of the force, the lightsaber, and excel in monastic meritocracy and spiritual enlightenment through the force. They are the defenders of peace."
FACTION.color = Color(160, 214, 89, 255)
FACTION.isDefault = false
FACTION.models = {
	"models/player/jedi_female_01.mdl",
	"models/player/jedi_female_02.mdl",
	"models/player/jedi_female_03.mdl",
	"models/player/jedi_female_04.mdl",
	"models/player/jedi_female_05.mdl",
	"models/player/jedi_female_06.mdl",
	"models/player/jedi_general_male_01.mdl",
	"models/player/jedi_general_male_02.mdl",
	"models/player/jedi_general_male_03.mdl",
	"models/player/jedi_general_male_04.mdl",
	"models/player/jedi_general_male_05.mdl",
	"models/player/jedi_general_male_06.mdl",
	"models/player/jedi_general_male_07.mdl",
	"models/player/jedi_general_male_08.mdl",
	"models/player/jedi_general_male_09.mdl",
	"models/player/jedi_male_01.mdl",
	"models/player/jedi_male_02.mdl",
	"models/player/jedi_male_03.mdl",
	"models/player/jedi_male_04.mdl",
	"models/player/jedi_male_05.mdl",
	"models/player/jedi_male_06.mdl",
	"models/player/jedi_male_07.mdl",
	"models/player/jedi_male_08.mdl",
	"models/player/jedi_male_09.mdl"
}

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

	inventory:Add("lightsaber", 1)
	inventory:Add("cid", 1, {
		name = character:GetName(),
		id = id
	})
end

FACTION_JEDI = FACTION.index
