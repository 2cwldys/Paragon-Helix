
ix.currency.symbol = ""
ix.currency.singular = "Credit"
ix.currency.plural = "Credits"

ix.config.SetDefault("scoreboardRecognition", true)
ix.config.SetDefault("music", "sw/swcw_soundtrack_70battle_of_christophsis.mp3")

ix.config.Add("rationTokens", 20, "The amount of tokens that a person will get from a ration", nil, {
	data = {min = 0, max = 1000},
	category = "economy"
})

ix.config.Add("rationInterval", 300, "How long a person needs to wait in seconds to get their next ration", nil, {
	data = {min = 0, max = 86400},
	category = "economy"
})
