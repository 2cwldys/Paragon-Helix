FACTION.name = "Mandalorian"
FACTION.description = "A fearful and menacing bounty hunter, their profession is made very clear to the known galaxy through a rocky history of collective legend and culture."
FACTION.color = Color(155, 41, 232, 255)
FACTION.isGloballyRecognized = true
FACTION.models = {
	"models/smitty/swbf/sm_variant_1/hero_gunslinger_sm_variant_1.mdl",
	"models/smitty/swbf/sm_variant_2/hero_gunslinger_sm_variant_2.mdl",
	"models/smitty/swbf/sm_variant_3/hero_gunslinger_sm_variant_3.mdl",
	"models/smitty/swbf/sm_variant_4/hero_gunslinger_sm_variant_4.mdl"
}
FACTION.isDefault = false
FACTION.runSounds = {[0] = "NPC_CombineS.RunFootstepLeft", [1] = "NPC_CombineS.RunFootstepRight"}

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

	inventory:Add("cid", 1, {
		name = character:GetName(),
		id = id
	})
end

FACTION_MANDALORIAN = FACTION.index
