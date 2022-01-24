local HASH = require("constants/HashID")
local POSITIONS = require("constants/Positions")

local thirst = require("modules/models/Need")
local hunger = require("modules/models/Need")
local fatigue = require("modules/models/Need")

Player = {}

function Player:new()
    local o = {}

    setmetatable(o, {__index = self})

    o.state = {
        enable = false,
        vehicle = false,
        showNotif = false,
    }
    o.actionCost = {
        alcohol = false,
        move = false,
        sprint = false,
        melee = false
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

function Player:getScenePos()
    local player = Game.GetPlayer()
    local playerPos = player:GetWorldPosition()

    for location, restPos in pairs(POSITIONS) do
        if (playerPos.x >= restPos.x) and (playerPos.x <= (restPos.x + restPos.xOffset)) and
        (playerPos.y >= restPos.y) and (playerPos.y <= (restPos.y + restPos.yOffset)) then
            if location == "homeBed" then
                self.actionRegen.sleep = true
            elseif location == "homeCouch" then
                self.state.enable = true
                self.actionRegen.rest = true
            elseif location == "homeShower" then
                self.state.enable = true
                self.actionRegen.shower = true
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
    self.needs.thirst:update(LiNC.config.thirst, User.settings.decayRate.thirst)
    self.needs.hunger:update(LiNC.config.hunger, User.settings.decayRate.hunger)
    self.needs.fatigue:update(LiNC.config.fatigue, User.settings.decayRate.fatigue)
    if self.actionRegen.sleep then
        self.actionRegen.sleep = false
        self.needs.fatigue:setTotal(0)
        self.needs.hunger:setTotal(self.needs.hunger.state.total + LiNC.config.hunger.sleepTotalCost)
        self.needs.thirst:setTotal(self.needs.thirst.state.total + LiNC.config.thirst.sleepTotalCost)
    end
    self.actionRegen.melee = false
    if self.state.showNotif then
        self.state.showNotif = false
        if User.settings.notif then
            Notif.show()
        end
    end
end

return Player
