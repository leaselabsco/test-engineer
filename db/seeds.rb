categories_list = [
	"Action Adventure",
	"Action Role Playing",
	"Adventure",
	"Fighting",
	"First Person shooter",
	"MOBA",
	"Platform",
	"Puzzle Platformer",
	"Rhythm",
	"Sandbox",
	"Sports",
	"Survival horror",
	"Turn-Based Strategy"
]

categories_list.each do |category_name|
	Category.create(name: category_name)
end

games_list = [
	{
		name: "The Witcher 3: Wild Hunt",
		category_id: Category.find_by(name: "Action Role Playing").id
	},
	{
		name: "Bloodborne",
		category_id: Category.find_by(name: "Action Role Playing").id
	},
	{
		name: "The Last of Us",
		category_id: Category.find_by(name: "Action Adventure").id
	},
	{
		name: "Grand Theft Auto V",
		category_id: Category.find_by(name: "Action Adventure").id
	},
	{
		name: "Dota 2",
		category_id: Category.find_by(name: "MOBA").id
	},
	{
		name: "The Walking Dead",
		category_id: Category.find_by(name: "Adventure").id
	},
	{
		name: "Mass Effect 3",
		category_id: Category.find_by(name: "Action Role Playing").id
	},
	{
		name: "Journey",
		category_id: Category.find_by(name: "Adventure").id
	},
	{
		name: "Fire Emblem: Awakening",
		category_id: Category.find_by(name: "Turn-Based Strategy").id
	},
	{
		name: "Portal 2",
		category_id: Category.find_by(name: "Puzzle Platformer").id
	},
	{
		name: "Minecraft",
		category_id: Category.find_by(name: "Sandbox").id
	},
	{
		name: "The Elder Scrolls V: Skyrim",
		category_id: Category.find_by(name: "Action Role Playing").id
	},
	{
		name: "Dark Souls",
		category_id: Category.find_by(name: "Action Role Playing").id
	},
	{
		name: "Batman: Arkham City",
		category_id: Category.find_by(name: "Action Adventure").id
	},
	{
		name: "Super Meat Boy",
		category_id: Category.find_by(name: "Platform").id
	},
	{
		name: "Super Mario Galaxy 2",
		category_id: Category.find_by(name: "Platform").id
	},
	{
		name: "Rock Band 3",
		category_id: Category.find_by(name: "Rhythm").id
	},
	{
		name: "Red Dead Redemption",
		category_id: Category.find_by(name: "Action Adventure").id
	},
	{
		name: "Mass Effect 2",
		category_id: Category.find_by(name: "Action Role Playing").id
	},
	{
		name: "Limbo",
		category_id: Category.find_by(name: "Platform").id
	},
	{
		name: "Uncharted 2: Among Thieves",
		category_id: Category.find_by(name: "Action Adventure").id
	}
]

games_list.each do |game|
	Game.create(title: game[:name], category_id: game[:category_id])
end

STDOUT.write "Seed File Completed"