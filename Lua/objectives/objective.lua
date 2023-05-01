local objective = {}

objective.Name = "Задачи"
objective.Text = "Выполните задачи!"
objective.AmountPoints = 100
objective.EndRoundObjective = false
objective.DontLooseLives = false

objective.Awarded = false

function objective:Init(character)
    self.Character = character
end

function objective:Start()
    return true
end

function objective:IsCompleted()
    return true
end

function objective:CharacterDeath(character) end
function objective:StopRepairing(item, character) end

function objective:IsFailed()
    return false
end

function objective:Award()
    self.Awarded = true

    local client = Traitormod.FindClientCharacter(self.Character)

    if client then 
        local points = Traitormod.AwardPoints(client, self.AmountPoints)
        local lives = Traitormod.AdjustLives(client, self.AmountLives)
        Traitormod.SendObjectiveCompleted(client, self.Text, points, lives)

        if self.DontLooseLives then
            Traitormod.LostLivesThisRound[client.SteamID] = true
        end
    end

    if self.OnAwarded ~= nil then
        self:OnAwarded()
    end
end

function objective:Fail()
    self.Awarded = true
    
    local client = Traitormod.FindClientCharacter(self.Character)

    if client then 
        Traitormod.SendObjectiveFailed(client, self.Text)
    end

    if self.OnAwarded ~= nil then
        self:OnAwarded()
    end
end

function objective:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self

    return o
end

return objective
