local HASH = require("constants/HashID")
local POSITIONS = require("constants/Positions")

local thirst = require("modules/models/Need")
local hunger = require("modules/models/Need")
local fatigue = require("modules/models/Need")


local GameHUD = require("modules/utils/GameHUD")

Player = {}

function Player:new()
    local o = {}

    setmetatable(o, {__index = self})

    o.state = {
        enable = false,
        vehicle = false,
        showNotif = false,
        refresh = false
    }
    o.actionCost = {
        alcohol = false,
        move = false,
        sprint = false,
        melee = false,
        jump = false
        --drug = false --wip
    }
    o.actionRegen = {
        drink = false,
        eat = false,
        shower = false,
        rest = false,
        sleep = false
        --sex = false --wip
    }
    o.needs = {
        thirst = thirst:new(),
        hunger = hunger:new(),
        fatigue = fatigue:new()
    }

    return o
end

function Player:reset()
    self.needs.thirst:reset()
    self.needs.hunger:reset()
    self.needs.fatigue:reset()
end


-- DaniLt on nexusmods forums came up with this good way to search for sub strings
-- Had thought to try it this way too, but am too much of a noob at Lua to get the syntax right
function Player:getScenePos()
    local player = Game.GetPlayer()
    local playerPos = player:GetWorldPosition()

    for location, restPos in pairs(POSITIONS) do
        if (playerPos.x >= (restPos.x - restPos.xSlack)) and (playerPos.x <= (restPos.x + restPos.xSlack)) and
        (playerPos.y >= (restPos.y - restPos.ySlack)) and (playerPos.y <= (restPos.y + restPos.ySlack)) and
		(playerPos.z >= (restPos.z - restPos.zSlack)) and (playerPos.z <= (restPos.z + restPos.zSlack)) then
			if string.find(location, "Bed") ~= nil then
				self.actionRegen.sleep = true
				--Game.PrintHealth()
				print("Sleeping in bed")
				Notif.show()	
			elseif string.find(location, "Couch") ~= nil then
				self.state.enable = true
				self.actionRegen.rest = true
				--Game.PrintHealth()
				print("Resting on couch")
				Notif.show()
			elseif string.find(location, "Bar") ~= nil then
				self.state.enable = true
				self.actionRegen.rest = true
				--Game.PrintHealth()
				print("Resting at bar")
				Notif.show()
			elseif string.find(location, "Stand") ~= nil then
				self.state.enable = true
				self.actionRegen.wait = true
				--Game.PrintHealth()
				print("Resting at an Obstacle")
				Notif.show()
			elseif string.find(location, "Shower") ~= nil then
				self.state.enable = true
				self.actionRegen.shower = true
				--Game.PrintHealth()
				print("Taking a shower")
				Notif.show()
			end
        end
    end
end

function Player:getConsumption()
    local player = Game.GetPlayer()
    local playerID = player:GetEntityID()
    local playerEffects = Game.GetStatusEffectSystem():GetAppliedEffects(playerID)

    self.actionRegen.drink = false
    self.actionRegen.eat = false
    self.actionCost.alcohol = false
    if (playerEffects) then
        for _, playerEffect in pairs(playerEffects) do
            local effect = HASH[playerEffect:GetRecord():GetID().hash]
            if effect ~= nil then
                if effect == "drink" then
                    self.actionRegen.drink = true
                elseif effect == "eat" then
                    self.actionRegen.eat = true
                elseif effect == "alcohol" then
                    self.actionCost.alcohol = true
                end
            end
        end
    end
end

function Player:updateMetabolism()
    self.needs.thirst:update(LiNC.config.thirst, User.settings.thirst)
    self.needs.hunger:update(LiNC.config.hunger, User.settings.hunger)
    self.needs.fatigue:update(LiNC.config.fatigue, User.settings.fatigue)
    if self.actionRegen.sleep then
        self.actionRegen.sleep = false
        self.needs.fatigue:setTotal(0)
        self.needs.hunger:setTotal(self.needs.hunger.state.total + LiNC.config.hunger.sleepTotalCost)
        self.needs.thirst:setTotal(self.needs.thirst.state.total + LiNC.config.thirst.sleepTotalCost)
    end
    self.actionRegen.melee = false
    self.actionCost.jump = false
    if self.state.showNotif then
        self.state.showNotif = false
        if User.settings.display.notif then
            Notif.show()
        end
    end
end

return Player
