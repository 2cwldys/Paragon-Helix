
FACTION.name = "CIS Infantry"
FACTION.description = "The main ground forces of the Confederacy."
FACTION.color = Color(50, 100, 150)
FACTION.pay = 10
FACTION.models = {"models/player/hydro/b1_battledroids/assault/b1_battledroid_assault.mdl"}
FACTION.isDefault = false
FACTION.isGloballyRecognized = true
FACTION.runSounds = {[0] = "NPC_MetroPolice.RunFootstepLeft", [1] = "NPC_MetroPolice.RunFootstepRight"}

function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()

	inventory:Add("e5", 1)
	inventory:Add("ar2ammo", 2)
end

function FACTION:GetDefaultName(client)
	return "CIS-B1." .. Schema:ZeroNumber(math.random(1, 999), 3), true
end

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()

	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

function FACTION:OnNameChanged(client, oldValue, value)
	local character = client:GetCharacter()

	if (!Schema:IsCombineRank(oldValue, "B1") and Schema:IsCombineRank(value, "B1")) then
		character:JoinClass(CLASS_MPR)
		character:SetModel("models/player/hydro/b1_battledroids/assault/b1_battledroid_assault.mdl")
		client:SetMaxHealth(100)
		client:SetHealth(100)
		client:SetArmor(50)
	elseif (!Schema:IsCombineRank(oldValue, "B2") and Schema:IsCombineRank(value, "B2")) then
		character:JoinClass(CLASS_MPU)
		character:SetModel("models/player/hydro/b2_battledroid/b2_battledroid.mdl")
		client:SetMaxHealth(200)
		client:SetHealth(200)
		client:SetArmor(200)
	elseif (!Schema:IsCombineRank(oldValue, "CMND") and Schema:IsCombineRank(value, "CMND")) then
		character:JoinClass(CLASS_EMP)
		character:SetModel("models/sally/tkaro/bx_commando_droid.mdl")
		client:SetMaxHealth(150)
		client:SetHealth(150)
		client:SetArmor(150)
	
	elseif (!Schema:IsCombineRank(oldValue, "SCN") and Schema:IsCombineRank(value, "SCN")
	or !Schema:IsCombineRank(oldValue, "SHIELD") and Schema:IsCombineRank(value, "SHIELD")) then
		character:JoinClass(CLASS_MPS)

		Schema:CreateScanner(client, Schema:IsCombineRank(client:Name(), "SHIELD") and "npc_clawscanner" or nil)
	end

	if (!Schema:IsCombineRank(oldValue, "GHOST") and Schema:IsCombineRank(value, "GHOST")) then
		character:SetModel("models/eliteghostcp.mdl")
	end
end

FACTION_MPF = FACTION.index
