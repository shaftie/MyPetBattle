---------------------
-- AQUATIC / WATER --
---------------------
function aquatic(petName)

local aquatic_abilities = nil

-- Get pet name
if petName == nil then
	petName = MyPetBattle.petName()
end

tf,renewing_mist_cd = MyPetBattle.buff("Renewing Mists")
tf,shell_shield_cd = MyPetBattle.buff("Shell Shield")
tf,apocalypse_cd = MyPetBattle.buff("Apocalypse")
if apocalypse_cd and apocalypse_cd < 2 then 
    print ("need to swap to a beetle")
    return nil
end

----------------
-- CROCOLISKS --
----------------
if petName == "Chuck" or petName == "Muckbreath" or petName == "Snarly" or petName == "Toothy" then
	aquatic_abilities = 
		{
			{"Devour", 			MyPetBattle.hp("active",2) < 0.20 },	-- Slot 3,  if we kill the enemy with Devour, we restore health
			{"Rip", 			},	-- Slot 1
			{"Consume", 		},	-- Slot 1
			{"Surge", 			},	-- Slot 2
			{"Water Jet", 		},	-- Slot 2
			{"Blood in the Water",},	-- Slot 3
		}
-----------------
-- CRUSTACEANS --
-----------------
elseif petName == "Emperor Crab" or petName == "Shore Crab" or petName == "Shore Crawler" or petName == "Spirebound Crab" or petName == "Strand Crab" or petName == "Strand Crawler" then
	aquatic_abilities = 
		{
			{"Renewing Mists", not MyPetBattle.buff("Renewing Mists") or renewing_mist_cd < 2	},	-- Slot 2
			{"Healing Wave", 	MyPetBattle.hp() < 0.7 },	-- Slot 2
			{"Shell Shield", 	not MyPetBattle.buff("Shell Shield") or shell_shield_cd < 2},	-- Slot 3
			{"Snap", 			},	-- Slot 1
			{"Surge", 			},	-- Slot 1
			{"Whirlpool", 		},	-- Slot 3
		}
elseif petName == "Magical Crawdad" then
	aquatic_abilities = 
		{
			{"Shell Shield", 	not MyPetBattle.buff("Shell Shield") },	-- Slot 2
			{"Snap", 			},	-- Slot 1
			{"Surge", 			},	-- Slot 1
			{"Renewing Mists", 	},	-- Slot 2
			{"Whirlpool", 		},	-- Slot 3
			{"Wish", 			},	-- Slot 3
		}
----------
-- FISH --
----------
elseif petName == "Fishy" or petName == "Tiny Goldfish" then
	aquatic_abilities = 
		{
			{"Healing Wave", 	MyPetBattle.hp() < 0.7 },	-- Slot 2
			{"Water Jet", 		},	-- Slot 1
			{"Surge", 			},	-- Slot 1
			{"Cleansing Rain", 	},	-- Slot 2
			{"Whirlpool", 		},	-- Slot 3
			{"Pump", 			},	-- Slot 3
		}
elseif petName == "Purple Puffer" then
	aquatic_abilities = 
		{
			{"Healing Wave", 	MyPetBattle.hp() < 0.7 },	-- Slot 2
			{"Water Jet", 		},	-- Slot 1
			{"Surge", 			},	-- Slot 1
			{"Spiked Skin", 	},	-- Slot 2
			{"Whirlpool", 		},	-- Slot 3
			{"Pump", 			},	-- Slot 3
		}
elseif petName == "Tiny Blue Carp" then
	aquatic_abilities = 
		{
			{"Surge", 			},	-- Slot 1
			{"Psychic Blast", 	},	-- Slot 1
			{"Healing Stream", 	},	-- Slot 2
			{"Wild Magic", 		},	-- Slot 2
			{"Pump", 			},	-- Slot 3
			{"Mana Surge", 		},	-- Slot 3
		}
elseif petName == "Tiny Green Carp" then
	aquatic_abilities = 
		{
			{"Water Jet", 		},	-- Slot 1
			{"Surge", 			},	-- Slot 1
			{"Cleansing Rain", 	},	-- Slot 2
			{"Healing Stream", 	},	-- Slot 2
			{"Whirlpool", 		},	-- Slot 3
			{"Invisibility", 	},	-- Slot 3
		}
elseif petName == "Tiny Red Carp" then
	aquatic_abilities = 
		{
			{"Water Jet", 		},	-- Slot 1
			{"Poison Spit", 	},	-- Slot 1
			{"Cleansing Rain", 	},	-- Slot 2
			{"Healing Stream", 	},	-- Slot 2
			{"Whirlpool", 		},	-- Slot 3
			{"Spiked Skin", 	},	-- Slot 3
		}
elseif petName == "Tiny White Carp" then
	aquatic_abilities = 
		{
			{"Healing Wave", 	MyPetBattle.hp() < 0.7 },	-- Slot 2
			{"Dive", 			},	-- Slot 3
			{"Water Jet", 		},	-- Slot 1
			{"Surge", 			},	-- Slot 1
			{"Cleansing Rain", 	},	-- Slot 2
			{"Healing Stream", 	},	-- Slot 3
		}
---------------------
-- FROGS AND TOADS --
---------------------
elseif petName == "Biletoad" or petName == "Frog" or petName == "Garden Frog" or petName == "Huge Toad" or petName == "Jubling" or petName == "Jungle Darter" or petName == "Leopard Tree Frog" or petName == "Mac Frog" or petName == "Mojo" or petName == "Small Frog" or petName == "Spotted Bell Frog" or petName == "Tree Toad" or petName == "Wood Frog" or petName == "Yellow-Bellied Bullfrog" or petName == "Toad" or petName == "Tree Frog" then
	aquatic_abilities = 
		{
			{"Healing Wave", 	MyPetBattle.hp() < 0.7 },	-- 
			{"Water Jet", 		},	-- 
			{"Tongue Lash", 	},	-- 
			{"Cleansing Rain", 	},	-- 
			{"Frog Kiss", 		},	-- 
			{"Swarm of Flies", 	},	-- 
		}
elseif petName == "Swamp Croaker" then
	aquatic_abilities = 
		{
			{"Bubble", 			MyPetBattle.hp() < 0.7 },	-- 
			{"Water Jet", 		},	-- 
			{"Tongue Lash", 	},	-- 
			{"Frog Kiss", 		},	-- 
			{"Swarm of Flies", 	},	-- 
			{"Croak", 			},	-- 
		}		
-------------
-- INSECTS --
-------------
elseif petName == "Aqua Strider" or petName == "Dancing Water Skimmer" or petName == "Eternal Strider" or petName == "Mirror Strider" then
	aquatic_abilities = 
		{
			{"Healing Wave", 	MyPetBattle.hp() < 0.7 },	-- Slot 2
			{"Cleansing Rain", 	MyPetBattle.hp() < 0.9 },	-- Slot 2
			{"Water Jet", 		},	-- Slot 1
			{"Poison Spit",		MyPetBattle.buff("Pumped Up")},	-- Slot 1
			{"Soothe", 			},	-- Slot 3
			{"Pump",       		not MyPetBattle.buff("Pumped Up") },  -- Slot 3
		}
-------------
-- MAMMALS --
-------------
elseif petName == "Golden Civet" or petName == "Golden Civet Kitten" or petName == "Kuitan Mongoose" or petName == "Mongoose" or petName == "Mongoose Pup" or petName == "Sifang Otter" or petName == "Sifang Otter Pup" then
	aquatic_abilities = 
		{
			{"Survival", 		MyPetBattle.hp() < 0.3 },	-- Slot 2
			{"Dive", 			},	-- Slot 3
			{"Bite", 			},	-- Slot 1
			{"Gnaw", 			},	-- Slot 1
			{"Screech", 		},	-- Slot 2
			{"Surge", 			},	-- Slot 3
		}
--------------
-- PENGUINS --
--------------
elseif petName == "Mr. Chilly" or petName == "Pengu" or petName == "Tundra Penguin" then
	aquatic_abilities = 
		{
			{"Peck", 			},	-- Slot 1
			{"Surge", 			},	-- Slot 1
			{"Frost Spit", 		},	-- Slot 2
			{"Slippery Ice", 	},	-- Slot 2
			{"Ice Lance", 		},	-- Slot 3
			{"Belly Slide", 	},	-- Slot 3
		}
-------------
-- TURTLES --
-------------
elseif petName == "Darkmoon Turtle" or petName == "Softshell Snapling" or petName == "Speedy" or petName == "Spiny Terrapin" or petName == "Turquoise Turtle" then
	aquatic_abilities = 
		{
			{"Healing Wave", 	MyPetBattle.hp() < 0.7 },	-- Slot 2
			{"Headbutt", 		},	-- Slot 3
			{"Shell Shield", 	not MyPetBattle.buff("Shell Shield") },	-- Slot 2
			{"Bite", 			},	-- Slot 1
			{"Grasp", 			},	-- Slot 1
			{"Powerball", 		},	-- Slot 3
		}
elseif petName == "Emerald Turtle" then
	aquatic_abilities = 
		{
			{"Healing Wave", 	MyPetBattle.hp() < 0.7 },	-- Slot 2
			{"Shell Shield", 	not MyPetBattle.buff("Shell Shield") },	-- Slot 2
			{"Headbutt", 		},	-- Slot 3
			{"Emerald Bite", 	},	-- Slot 1
			{"Grasp", 			},	-- Slot 1
			{"Powerball", 		},	-- Slot 3
		}
elseif petName == "Wanderer's Festival Hatchling" then
	aquatic_abilities = 
		{
			{"Shell Shield", 	not MyPetBattle.buff("Shell Shield") },	-- Slot 2
			{"Bite", 			},	-- Slot 1
			{"Grasp", 			},	-- Slot 1
			{"Perk Up", 		},	-- Slot 2
			{"Pump", 			},	-- Slot 3
			{"Cleansing Rain", 	},	-- Slot 3
		}
-------------------
-- MISCELLANEOUS --
-------------------
elseif petName == "Horny Toad" then
	aquatic_abilities = 
		{
			{"Healing Wave", 	MyPetBattle.hp() < 0.7 },	-- Slot 2
			{"Water Jet", 		},	-- Slot 1
			{"Tongue Lash", 	},	-- Slot 1
			{"Cleansing Rain", 	},	-- Slot 2
			{"Frog Kiss", 		},	-- Slot 3
			{"Swarm of Flies", 	},	-- Slot 3
		}
elseif petName == "Sea Pony" then
	aquatic_abilities = 
		{
			{"Water Jet", 		},	-- Slot 1
			{"Tidal Wave", 		},	-- Slot 1
			{"Surge", 			},	-- Slot 2
			{"Cleansing Rain", 	},	-- Slot 2
			{"Whirlpool", 		},	-- Slot 3
			{"Pump", 			},	-- Slot 3
		}
elseif petName == "Spawn of G'nathus" then
	aquatic_abilities = 
		{
			{"Dive", 			},	-- Slot 2
			{"Swallow You Whole",},	-- Slot 1
			{"Jolt", 			},	-- Slot 1
			{"Lightning Shield",},	-- Slot 2
			{"Thunderbolt", 	},	-- Slot 3
			{"Paralyzing Shock",},	-- Slot 3
		}
elseif petName == "Gahz'rooki" then
	aquatic_abilities = 
		{
			{"Devour", 			MyPetBattle.hp("active",2) < 0.20 },	-- Slot 2,  if we kill the enemy with Devour, we restore health
			{"Bite",			},	-- Slot 1
			{"Tail Slap", 		},	-- Slot 1
			{"Swallow You Whole",},	-- Slot 2
			{"Whirlpool", 		},	-- Slot 3
			{"Geyser",			},	-- Slot 3
		}
elseif petName == "Tideskipper" then
	aquatic_abilities = 
		{
			{"Crush",			},	-- Slot 1
			{"Grasp", 			},	-- Slot 1
			{"Tidal Wave", 		},	-- Slot 2
			{"Body Slam",		},	-- Slot 2
			{"Clobber", 		},	-- Slot 3
			{"Geyser",			},	-- Slot 3
		}

-------------------
else -- Unknown aquatic
	print("|cFFFF0000 Unknown aquatic pet: "..petName)
	return "UNKNOWN"
end

	spell = MyPetBattle.parseSpellTable(aquatic_abilities)
	return spell
end
