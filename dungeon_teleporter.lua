-- Name: 	dungeon_teleporter
-- Details:	teleporter NPC with all dungeons and raids avalaible in wow 3.3.5
-- Usage:	create some NPC in db and assign it's id to variable npcid
-- Website: https://github.com/Dimi-Dun-Morogh/-Eluna-WoW-scripts.git


local npcid = your npc id

local t = {
    [1] = {
        "Horde Cities", "horde", {"Orgrimmar", 1, 1503, -4415.5, 22, 0},
        {"Undercity", 0, 1831, 238.5, 61.6, 0},
        {"Thunderbluff", 1, -1278, 122, 132, 0},
        {"Silvermoon", 530, 9484, -7294, 15, 0}
    },
    [2] = {
        "Alliance Cities", "ally", {"Stormwind", 0, -8905, 560, 94, 0.62},
        {"Ironforge", 0, -4795, -1117, 499, 0},
        {"Darnassus", 1, 9952, 2280.5, 1342, 1.6},
        {"The Exodar", 530, -3863, -11736, -106, 2}
    },
    [3] = {
        "Azeroth Dungeons", "neutral",
        {"Stormwind Stockades", 0, -8769, 843, 89, 0.66},
        {"Gnomeregan", 0, -5162, 924, 257, 1.6},
        {"Deadmines", 0, -11209, 1673, 24, 1.5},
        {"Scholomance", 0, 1266, -2557, 94, 0.55},
        {"Shadowfang Keep", 0, -235, 1560.93, 78, 1.18},
        {"Scarlet Monastery", 0, 2901, -807, 160, 4.7},
        {"Stratholme", 0, 3387, -3338, 142, 4.88},
        {"Temple of Atal'Hakkar", 0, -10184, -3993, -109, 5.97},
        {"Magisters' Terrace", 530, 12888.21, -7321.73, 65.59, 4.66},
        {"Blackrock Spire", 0, -7530.14, -1218.92, 285.73, 5.21},
        {"Blackrock Depths", 0, -7184.62, -912.77, 165.59, 5},
        {"Blackfathom Deeps", 1, 4247.30, 739.78, -25.65, 1.29},
        {"The Culling of Stratholme", 1, -8754.59, -4453.8, -199.89, 4.5},
        {"The Black Morass", 1, -8759.43, -4198.28, -209.49, 2.22},
        {"Old Hillsbrad Foothills", 1, -8369.9, -4054.8, -208.21, 6.25},
        {"Dire Maul", 1, -3759.31, 934.53, 161.12, 6.26},
        {"Maraudon", 1, -1461.80, 2615.59, 76.81, 3.08},
        {"Ragefire Chasm", 1, 1813, -4415.63, -18.16, 5.21},
        {"Razorfen Downs", 1, -4655.9, -2520.22, 81.15, 4.2},
        {"Razorfen Kraul", 1, -4472.17, -1689.01, 81.36, 1.2},
        {"The Wailing Caverns", 1, -733.7, -2221.29, 17.52, 2.81},
        {"Zul'Farrak", 1, -6811.51, -2892, 8.88, 0.06}

    },
    [4] = {
        "Azeroth Raids", "neutral",
        {"Molten Core", 409, 1080.89, -474.9, -107.85, 4.41},
        {"Karazhan", 0, -11124.9, -2015.20, 47.24, 0.65},
        {"Sunwell Plateu", 530, 12565.027, -6774.6, 15.09, 3.21},
        {"Zul'Aman", 530, 6849.95, -7946.60, 170, 4.71},
        {"Temple of Ahn'Qiraj", 1, -8242.6, 1992, 129, 1},
        {"Ruins of Ahn'Qiraj", 1, -8408.49, 1497.52, 26.83, 2.56},
        {"Hyjal Summit", 1, -8176.18, -4175.84, -166.22, 0.87},
        {"Onyxia's Lair", 1, -4742.34, -3748.88, 51.48, 3.50}
    },
    [5] = {
        "Outland Dungeons", "neutral",
        {"Auchenai Cryps", 530, -3361.33, 5215.97, -100.94, 1.58},
        {"Mana-Tombs", 530, -3090.94, 4942.44, -100.45, 0.06},
        {"Sethekk Halls", 530, -3363.37, 4671, -101, 4.78},
        {"Shadow Labyrinth", 530, -3633, 4943.5, -100.9, 3.1},
        {"The Underbog", 530, 778.56, 6765.08, -72, 4.9},
        {"The Steamvault", 530, 816.4, 6932.88, -80.4, 1.5},
        {"The Slavepens", 530, 722.4, 7013, -72.84, 0.161},
        {"The Arcatraz", 530, 3307.48, 1342.62, 505.56, 5.08},
        {"The Botanica", 530, 3405.82, 1489.44, 182.83, 5.52},
        {"The Mechanar", 530, 2872, 1554.59, 252.15, 3.83},
        {"Hellfire Ramparts", 530, -359.69, 3067.63, -15.12, 1.84},
        {"The Blood Furnace", 530, -296.32, 3153.70, 31.60, 2.181},
        {"Shattered Halls", 530, -308.18, 3073.02, -3.64, 1.77}
    },
    [6] = {
        "Outland Raids", "neutral",
        {"Tempest Keep", 530, 3088.8, 1389.1, 185.15, 4.73},
        {"The Black Temple", 530, -3629, 316.96, 38.13, 3.31},
        {"Gruul's Lair", 530, 3538.9, 5098.87, 4.29, 5.59},
        {"Serpentshrine Cavern", 530, 827.6, 6868.1, -63.68, 0.161},
        {"Magtheridon's Lair", 530, -337.98, 3136.50, -102.92, 5.17}
    },
    [7] = {
        "Northrend Dungeons", "neutral",
        {"Ahn'Kahet", 571, 3642.20, 2034.38, 2.19, 4.33},
        {"Azjol-Nerub", 571, 3683.81, 2161.99, 35.84, 2.53},
        {"Drak'Tharon Keep", 571, 4774.82, -2033.6, 229.14, 1.56},
        {"Gundrak", 571, 6970, -4402, 441.57, 0.88},
        {"Halls of Lightning", 571, 9182.91, -1384.72, 1110.31, 5.67},
        {"Halls of Stone", 571, 8921.04, -982.04, 1039.409, 1.68},
        {"The Culling of Stratholme", 1, -8754.59, -4453.8, -199.89, 4.5},
        {"The Nexus", 571, 3893.2, 6985.63, 69.48, 6.27},

        {"The Oculus", 571, 3879, 6984.1, 106.32, 3.19},
        {"The Violet Hold", 571, 5685.71, 493.43, 652.59, 4},
        {"Utgarde Keep", 571, 1221.82, -4864.13, 41.34, 0.45},
        {"Utgarde Pinnacle", 571, 1243, -4857.12, 217.61, 3.44},
        {"The Forge of Souls", 571, 5661.22, 2015.73, 798.14, 5.4},
        {"Halls of Reflection", 571, 6633.98, 2001.63, 798.15, 4.5},
        {"Pit of Saron", 571, 5608.58, 2022.35, 798.14, 3.79}
    },
    [8] = {
        "Northrend Raids", "neutral",
        {"Naxxramas", 571, 3657.78, -1269.69, 243.54, 5.45},
        {"The Eye of Eternity", 571, 3863, 6986.92, 152.04, 5.84},
        {"The Obsidian Sanctum", 571, 3476.89, 266.101, -120.14, 3.31},
        {"The Ruby Sanctum", 571, 3600.44, 199.54, -113.88, 6.34},
        {"Onyxia's Lair", 1, -4742.34, -3748.88, 51.48, 3.50},
        {"Trial of the Champion", 571, 8578.80, 792.13, 558.23, 3.05},
        {"Vault of Archavon", 571, 5474.28, 2837.59, 418.67, 0.09},
        {"Trial of the Crusader", 571, 8515.27, 728.68, 558.24, 1.5},
        {"Ulduar", 571, 9337.28, -1116.48, 1245.14, 6.28},
        {"Icecrown Citadel", 571, 5788.74, 2070.70, 636, 3.59}
    },
    [9] = {
        "Neutral Cities", "neutral",
        {"Dalaran", 571, 5917.99, 633.80, 654.38, 2.61}
    }
};

function TeleNPC_OnGossipTalk(event, player, unit)
    -- playerFaction  = (player:GetTeam() == 0) ? "ally" : "horde";
    playerFaction = (player:GetTeam() == 0) and "ally" or "horde";
    -- Show main menu
    for i, v in ipairs(t) do
        if (v[2] == "neutral" or v[2] == playerFaction) then
            player:GossipMenuAddItem(0, v[1], i, 0)
        end
    end
    player:GossipSendMenu(1, unit)
end

-- event, player, unit, sender, intid, code
local function TeleNPC_OnGossipSelect(event, player, unit, sender, intid, code)
    if (sender == 0) then
        -- return to main menu
        TeleNPC_OnGossipTalk(event, player, unit)
        return
    end

    if (intid == 0) then
        -- Show teleport menu
        for i, v in ipairs(t[sender]) do
            if (i > 2) then
                player:GossipMenuAddItem(0, v[1], sender, i)
            end
        end
        player:GossipMenuAddItem(0, "Back", 0, 0)
        player:GossipSendMenu(1, unit)
        return
    else
        -- teleport
        local name, map, x, y, z, o = table.unpack(t[sender][intid])
        player:Teleport(map, x, y, z, o)
    end

    player:GossipComplete()
end

RegisterCreatureGossipEvent(npcid, 1, TeleNPC_OnGossipTalk)
RegisterCreatureGossipEvent(npcid, 2, TeleNPC_OnGossipSelect)
