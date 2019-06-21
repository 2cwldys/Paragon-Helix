
FACTION.name = "Citizen"
FACTION.description = "A regular human citizen enslaved by the Universal Union."
FACTION.color = Color(150, 125, 100, 255)
FACTION.isDefault = true
FACTION.models = {
	"models/player/valley/bith.mdl",
	"models/player/valley/gotal.mdl",
	"models/player/valley/kingyoskolina.mdl",
	"models/player/valley/nossorri.mdl",
	"models/player/valley/orphne.mdl",
	"models/padawan2/padawan2.mdl",
	"models/padawan4/padawan4.mdl",
	"models/padawan5/padawan5.mdl",
	"models/padawan6/padawan6.mdl",
	"models/tfa/comm/gg/npc_cit_sw_trandoshan_bounty_hunter_v2.mdl",
	"models/tfa/comm/gg/npc_cit_sw_trandoshan_bounty_hunter_v2_skin2.mdl",
	"models/player/tnb/citizens/female_01.mdl",
	"models/player/tnb/citizens/female_02.mdl",
	"models/player/tnb/citizens/female_03.mdl",
	"models/player/tnb/citizens/female_04.mdl",
	"models/player/tnb/citizens/female_05.mdl",
	"models/player/tnb/citizens/female_06.mdl",
	"models/player/tnb/citizens/female_07.mdl",
	"models/player/tnb/citizens/female_08.mdl",
	"models/player/tnb/citizens/female_09.mdl",
	"models/player/tnb/citizens/female_10.mdl",
	"models/player/tnb/citizens/female_11.mdl",
	"models/player/tnb/citizens/male_01.mdl",
	"models/player/tnb/citizens/male_02.mdl",
	"models/player/tnb/citizens/male_03.mdl",
	"models/player/tnb/citizens/male_04.mdl",
	"models/player/tnb/citizens/male_06.mdl",
	"models/player/tnb/citizens/male_05.mdl",
	"models/player/tnb/citizens/male_07.mdl",
	"models/player/tnb/citizens/male_08.mdl",
	"models/player/tnb/citizens/male_09.mdl",
	"models/player/tnb/citizens/male_10.mdl",
	"models/player/tnb/citizens/male_11.mdl",
	"models/player/tnb/citizens/male_12.mdl",
	"models/player/tnb/citizens/male_13.mdl",
	"models/player/tnb/citizens/male_14.mdl",
	"models/player/tnb/citizens/male_15.mdl",
	"models/player/tnb/citizens/male_16.mdl",
	"models/player/tnb/citizens/male_17.mdl",
	"models/player/tnb/citizens/male_18.mdl",
	"models/tnb/citizens/female_12.mdl",
	"models/tnb/citizens/female_14.mdl",
	"models/tnb/citizens/female_17.mdl",
	"models/tnb/citizens/female_18.mdl",
	"models/tnb/citizens/female_19.mdl",
	"models/tnb/citizens/female_20.mdl",
	"models/tnb/citizens/female_21.mdl",
	"models/tnb/citizens/female_22.mdl",
	"models/tnb/citizens/female_23.mdl",
	"models/tnb/citizens/male_20.mdl",
	"models/tnb/citizens/male_21.mdl",
	"models/tnb/citizens/male_22.mdl",
	"models/tnb/citizens/male_23.mdl",
	"models/byan7259/bodian_player/segular_rodian_player.mdl",
	"models/gyan7259/geequay_player/geequay_regular_player.mdl"
}

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

	inventory:Add("suitcase", 1)
	inventory:Add("cid", 1, {
		name = character:GetName(),
		id = id
	})
end

FACTION_CITIZEN = FACTION.index
