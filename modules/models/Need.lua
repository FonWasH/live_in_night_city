Need = {}

function Need:new()
    local o = {}

    setmetatable(o, {__index = self})

    o.config = {}
    o.userSettings = {}
    o.state = {
        total = 0,
        pool = 0,
        step = 0,
        prevStep = 0
    }

    return o
end

local function applyRandomEffects(state, effects)
    if effects ~= nil then
        if state.step > 0 then
            math.randomseed(os.time())
            for _, effect in pairs(effects) do
                if effect.probabilityStepMultiplier[state.step] > 0 then
                    local dice = math.random() and math.random() and math.random() and math.random(100)
                    local probability = effect.probability * effect.probabilityStepMultiplier[state.step]
                    if dice <= probability then
                        Game.ApplyEffectOnPlayer(effect.name)
                    end
                end
            end
        end
    end
end

local function refreshEffects(state, effects)
    if effects ~= nil then
        for _, effect in pairs(effects) do
            if state.prevStep > 0 then
                if effect.step[state.prevStep] then
                    Game.RemoveEffectPlayer(effect.name)
                end
            end
            if state.step > 0 then
                if effect.step[state.step] then
                    Game.ApplyEffectOnPlayer(effect.name)
                end
            end
        end
    end
end

local function refreshStatModifier(state, stats)
    for _, stat in pairs(stats) do
        if state.prevStep > 0 then
            local value = math.abs(stat.step[state.prevStep])
            if stat.type == "Multiplier" then
                value = 1 / stat.step[state.prevStep]
            end
            Game.AddStatModifier(stat.name, value, stat.type)
        end
        if state.step > 0 then
            Game.AddStatModifier(stat.name, stat.step[state.step], stat.type)
        end
    end
end

local function getActionValue(actions, playerActions)
    local value = 0
    for action, actionValue in pairs(actions) do
        if playerActions[action] then
            value = value + actionValue
        end
    end
    return value
end

function Need:setTotal(value)
    self.state.total = value

    if self.state.total <= 0 then
        self.state.total = 0
    end

    if self.state.total >= self.config.totalMax then
        self.state.total = self.config.totalMax
    end
end

function Need:updateStep()
    self.state.prevStep = self.state.step
    self.state.step = 0

    for step, stepRange in pairs(self.config.step.range) do
        if self.state.total > stepRange.min then
            self.state.step = step
        end
    end
end

function Need:updatePool()
    local poolMax = self.config.poolMax * self.userSettings.dayPool
    local regen = ((getActionValue(self.config.actionRegen, Player.actionRegen) * self.userSettings.dayPool) * self.userSettings.regenMultiplier)
    local cost = 1 + ((getActionValue(self.config.actionCost, Player.actionCost) * self.userSettings.dayPool) * self.userSettings.costMultiplier)

    self.state.pool = self.state.pool + regen + cost

    if self.state.pool < 0 then
        self:setTotal(self.state.total - 1)
        self.state.pool = poolMax
    elseif self.state.pool > poolMax then
        self:setTotal(self.state.total + 1)
        self.state.pool = 0
    end
end

function Need:reset()
    for k, _ in pairs(self.state) do
        self.state[k] = 0
    end
end

function Need:update(config, userSettings)
    self.config = config
    self.userSettings = userSettings
    local prevTotal = self.state.total

    if Player.state.enable then
        self:updatePool()
        self:updateStep()
		
		if prevTotal ~= self.state.total and self.state.total % 10 == 0 and self.state.total > 1 then
			Player.state.showNotif = true
		end

        if self.state.prevStep ~= self.state.step or Player.state.refresh then
            Player.state.refresh = false
			if self.state.step > 0 then
				Player.state.showNotif = true
			end
            refreshStatModifier(self.state, self.config.step.stats)
            refreshEffects(self.state, self.config.step.effects.persistent)
        end
        applyRandomEffects(self.state, self.config.step.effects.random)
    end
end

return Need
