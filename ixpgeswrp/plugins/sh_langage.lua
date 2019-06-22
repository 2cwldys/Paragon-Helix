local PLUGIN = PLUGIN

PLUGIN.name = "Languages"
PLUGIN.author = "Subleader"
PLUGIN.description = "Allows the player to speak in a different language."

ix.flag.Add("m", "Mando'an", function(client, bGiven)
end)
ix.flag.Add("h", "Huttese", function(client, bGiven)
end)
ix.flag.Add("b", "Binary", function(client, bGiven)
end)
ix.flag.Add("j", "Jawa's trade language", function(client, bGiven)
end)
ix.flag.Add("w", "Shyriiwook", function(client, bGiven)
end)
ix.flag.Add("B", "Bocce", function(client, bGiven)
end)

-- Language function
local function CreateLangCommand (commandName, flagName, format, dropFormat)
	do
		local COMMAND = {}
		COMMAND.arguments = ix.type.text

		function COMMAND:OnRun(client, message)
			if client:GetCharacter():HasFlags(flagName) then
				ix.chat.Send(client, commandName, message)
				ix.chat.Send(client, commandName.."_drop", message)
			end
		end

		ix.command.Add(commandName, COMMAND)
	end

	do
		local CLASS = {}
		CLASS.color = ix.config.Get("chatColor")
		CLASS.format = "%s "..format.." \"%s\""

		function CLASS:CanHear(speaker, listener)
			return (ix.config.Get("chatRange", 280) and listener:GetCharacter():HasFlags(flagName))
		end

		ix.chat.Register(commandName, CLASS)
	end

	do
		local CLASS = {}
		CLASS.color = ix.config.Get("chatColor")
		CLASS.format = "%s "..dropFormat

		function CLASS:CanHear(speaker, listener)
			return (ix.config.Get("chatRange", 280) and !listener:GetCharacter():HasFlags(flagName))
		end
		ix.chat.Register(commandName.."_drop", CLASS)
	end
end

CreateLangCommand ("ma", "m", "says in Mando'an", "says something in Mando'an") -- Command, Flag, Format
CreateLangCommand ("hu", "h", "says in Huttese", "says something in Huttese")
CreateLangCommand ("bi", "b", "says in Binary", "says something in Binary")
CreateLangCommand ("jt", "j", "says in Jawa's trade language", "says something in Jawa's trade language")
CreateLangCommand ("sy", "w", "says in Shyriiwook", "says something in Shyriiwook")
CreateLangCommand ("bo", "B", "says in Bocce", "says something in Bocce")