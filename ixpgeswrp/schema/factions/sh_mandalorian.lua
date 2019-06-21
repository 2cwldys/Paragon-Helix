FACTION.name = "Mandalorian"
FACTION.description = "A fearful and menacing bounty hunter, their profession is made very clear to the known galaxy through a rocky history of collective legend and culture."
FACTION.color = Color(155, 41, 232, 255)
FACTION.isGloballyRecognized = true
FACTION.models = {
	"models/player/lillwasa/sw/deathwatchassassin.mdl",
	"models/player/lillwasa/sw/deathwatchassassin2.mdl",
	"models/player/lillwasa/sw/deathwatchassassin3.mdl",
	"models/tfa/comm/gg/deathwatch_bf2/commander_helmet.mdl",
	"models/tfa/comm/gg/deathwatch_bf2/lieutenant_helmet.mdl",
	"models/tfa/comm/gg/deathwatch_bf2/sold_com_helmet.mdl",
	"models/tfa/comm/gg/deathwatch_bf2/soldier_helmet.mdl",
	"models/tfa/comm/gg/deathwatch_bf2/super_commando_captain_helmet.mdl",
	"models/tfa/comm/gg/deathwatch_bf2/super_commando_helmet.mdl",
	"models/tfa/comm/gg/deathwatch_bf2/trooper_female_helmet.mdl",
	"models/tfa/comm/gg/deathwatch_bf2/trooper_helmet.mdl",
	"models/gonzo/femalemandalorians/femalemandalorian1/femalemandalorian1.mdl",
	"models/gonzo/femalemandalorians/femalemandalorian10/femalemandalorian10.mdl",
	"models/gonzo/femalemandalorians/femalemandalorian11/femalemandalorian11.mdl",
	"models/gonzo/femalemandalorians/femalemandalorian12/femalemandalorian12.mdl",
	"models/gonzo/femalemandalorians/femalemandalorian2/femalemandalorian2.mdl",
	"models/gonzo/femalemandalorians/femalemandalorian3/femalemandalorian3.mdl",
	"models/gonzo/femalemandalorians/femalemandalorian4/femalemandalorian4.mdl",
	"models/gonzo/femalemandalorians/femalemandalorian5/femalemandalorian5.mdl",
	"models/gonzo/femalemandalorians/femalemandalorian7/femalemandalorian7.mdl",
	"models/gonzo/femalemandalorians/femalemandalorian8/femalemandalorian8.mdl",
	"models/gonzo/femalemandalorians/femalemandalorian9/femalemandalorian9.mdl",
	"models/gonzo/talonclan/davincatra/davincatra.mdl",
	"models/gonzo/talonclan/delkatoan/delkatoan.mdl",
	"models/gonzo/talonclan/galecabur/galecabur.mdl",
	"models/gonzo/talonclan/jagre/jagre.mdl",
	"models/gonzo/talonclan/kodaanorion/kodaanorion.mdl",
	"models/gonzo/talonclan/vistnel/vistnel.mdl"
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
