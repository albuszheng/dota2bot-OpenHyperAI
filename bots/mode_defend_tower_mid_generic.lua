local Utils = require( GetScriptDirectory()..'/FunLib/utils')
local Defend = require( GetScriptDirectory()..'/FunLib/aba_defend')

local bot = GetBot()
local botName = bot:GetUnitName()

if bot:IsInvulnerable() or not bot:IsHero() or not string.find(botName, "hero") or bot:IsIllusion() then
	return
end

-- function Think()
--     Defend.DefendThink(bot, LANE_MID)
-- end

if Utils.BuggyHeroesDueToValveTooLazy[botName] then
	function GetDesire() return Defend.GetDefendDesire(bot, LANE_MID) end
	function Think() return Defend.DefendThink(bot, LANE_MID) end
end