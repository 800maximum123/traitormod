local objective = Traitormod.RoleManager.Objectives.Objective:new()

objective.Name = "Husk"
objective.AmountPoints = 800

function objective:Start(target)
    self.Target = target

    if self.Target == nil then
        return false
    end

    self.TargetName = Traitormod.GetJobString(self.Target) .. " " .. self.Target.Name

    self.Text = string.format("Во имя червя! Мы должны показать им то, насколько Хаск мощнее человека. Превратите %s в него, дабы доказать это!", self.TargetName)

    return true
end

function objective:IsCompleted()
    if self.Target == nil then
        return false
    end

    local aff = self.Target.CharacterHealth.GetAffliction("huskinfection", true)

    if aff ~= nil and aff.Strength > 80 then
        return true
    end

    return false
end

function objective:IsFailed()
    if self.Target == nil then
        return false
    end

    if self.Target.IsDead then
        return true
    end

    return false
end

return objective
