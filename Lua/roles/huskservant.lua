local role = Traitormod.RoleManager.Roles.Antagonist:new()

role.Name = "HuskServant"
role.IsAntagonist = false

function role:Start()
    local text = self:Greet()
    local client = Traitormod.FindClientCharacter(self.Character)
    if client then
        Traitormod.SendTraitorMessageBox(client, text, "oneofus")
        Traitormod.UpdateVanillaTraitor(client, true, text, "oneofus")
    end
end

function role:Greet()
    local partners = Traitormod.StringBuilder:new()
    local traitors = Traitormod.RoleManager.FindCharactersByRole("Cultist")
    for _, character in pairs(traitors) do
        if character ~= self.Character then
            partners('"%s" ', character.Name)
        end
    end
    partners = partners:concat(" ")

    local sb = Traitormod.StringBuilder:new()
    sb("Ты послушник Церкви Хаска!\nТы напрямую выполняешь приказы культистов Хаска..\n")

    sb("Культисты Церкви Хаска: %s\n", partners)

    if self.TraitorBroadcast then
        sb("\n\nТы не можешь говорить, но тебе не нужно. Великий Червь даровал тебе иной способ общения. Используй !tc дабы общаться с Культистами Церкви Хаска.")
    end

    return sb:concat()
end

function role:OtherGreet()
    local sb = Traitormod.StringBuilder:new()
    sb("Послушник Церкви Хаска: %s.", self.Character.Name)
    return sb:concat()
end

return role
