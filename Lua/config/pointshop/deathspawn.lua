local category = {}

category.Name = "Возрождение"
category.Decoration = "huskinvite"

category.CanAccess = function(client)
    return client.Character == nil or client.Character.IsDead or not client.Character.IsHuman
end

local function SpawnCreature(species, client, insideHuman)
    local waypoints = Submarine.MainSub.GetWaypoints(true)

    if LuaUserData.IsTargetType(Game.GameSession.GameMode, "Barotrauma.PvPMode") then
        waypoints = Submarine.MainSubs[math.random(2)].GetWaypoints(true)
    end

    local spawnPositions = {}

    if insideHuman then
        for key, value in pairs(Character.CharacterList) do
            if value.IsHuman and not value.IsDead and value.TeamID == CharacterTeamType.Team1 then
                table.insert(spawnPositions, value.WorldPosition)
            end
        end
    else
        for key, value in pairs(waypoints) do
            if value.CurrentHull == nil then
                local walls = Level.Loaded.GetTooCloseCells(value.WorldPosition, 250)
                if #walls == 0 then
                    table.insert(spawnPositions, value.WorldPosition)
                end
            end
        end
    end

    local spawnPosition

    if #spawnPositions == 0 then
        -- no waypoints? https://c.tenor.com/RgExaLgYIScAAAAC/megamind-megamind-meme.gif
        spawnPosition = Submarine.MainSub.WorldPosition -- spawn it in the middle of the sub

        Traitormod.Log("Не могу найти хороших вейпоинтов. СПАВНИМ В ЦЕНТРЕ СУБМАРИНЫ!")
    else
        spawnPosition = spawnPositions[math.random(#spawnPositions)]
    end

    Entity.Spawner.AddCharacterToSpawnQueue(species, spawnPosition, function (character)
        client.SetClientCharacter(character)
    end)
end

category.Products = {
    {
        Name = "Появится как Ползун",
        Price = 400,
        Limit = 4,
        IsLimitGlobal = true,
        PricePerLimit = 100,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("crawler", client)
        end
    },

    {
        Name = "Появится как Ползун(Старый)",
        Price = 400,
        Limit = 4,
        IsLimitGlobal = true,
        PricePerLimit = 100,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("legacycrawler", client)
        end
    },

    {
        Name = "Появится как Хаск(Старый)",
        Price = 450,
        Limit = 5,
        IsLimitGlobal = true,
        PricePerLimit = 0,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("legacyhusk", client)
        end
    },

    {
        Name = "Появится как ребенок Ползуна",
        Price = 250,
        Limit = 4,
        IsLimitGlobal = true,
        PricePerLimit = 10,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("crawler_hatchling", client)
        end
    },

    {
        Name = "Появится как ребенок Грязевого Раптора",
        Price = 400,
        Limit = 5,
        IsLimitGlobal = true,
        PricePerLimit = 150,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("mudraptor_hatchling", client)
        end
    },

    {
        Name = "Появится как ребенок Акульего Тигра",
        Price = 700,
        Limit = 5,
        IsLimitGlobal = true,
        PricePerLimit = 250,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("tigerthresher_hatchling", client)
        end
    },

    {
        Name = "Появится как Шипостай",
        Price = 1000,
        Limit = 1,
        IsLimitGlobal = true,
        PricePerLimit = 250,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("spineling", client)
        end
    },

    {
        Name = "Появится как Грязевой Раптор",
        Price = 1000,
        Limit = 3,
        IsLimitGlobal = true,
        PricePerLimit = 100,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("mudraptor", client)
        end
    },

    {
        Name = "Появится как Креветка",
        Price = 1100,
        Limit = 2,
        IsLimitGlobal = true,
        PricePerLimit = 200,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("mantis", client)
        end
    },

    {
        Name = "Появится как Хаск",
        Price = 1800,
        Limit = 2,
        IsLimitGlobal = true,
        PricePerLimit = 400,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("husk", client)
        end
    },

    {
        Name = "Появится как Костолом",
        Price = 1800,
        Limit = 2,
        IsLimitGlobal = true,
        PricePerLimit = 500,
        Enabled = true,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("Bonethresher", client)
        end
    },

    {
        Name = "Появится как Акулий Тигр",
        Price = 2500,
        Limit = 2,
        IsLimitGlobal = true,
        PricePerLimit = 500,
        Enabled = true,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("Tigerthresher", client)
        end
    },

    {
        Name = "Появится как Молох (УжасныЙ, старый)",
        Price = 2500,
        Limit = 1,
        IsLimitGlobal = true,
        PricePerLimit = 500,
        Enabled = true,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("legacymoloch", client)
        end
    },  

    {
        Name = "Появится как Молотоглав",
        Price = 2500,
        Limit = 2,
        IsLimitGlobal = true,
        PricePerLimit = 1000,
        Enabled = true,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("hammerhead", client)
        end
    },

    {
        Name = "Появится как Фрактальный Страж",
        Price = 4900,
        Limit = 1,
        IsLimitGlobal = true,
        PricePerLimit = 3000,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("fractalguardian", client)
        end
    },

    {
        Name = "Появится как Гигансткий Шипостай",
        Price = 20000,
        Limit = 1,
        IsLimitGlobal = true,
        PricePerLimit = 1000,
        Enabled = true,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("Spineling_giant", client)
        end
    },

    {
        Name = "Появится как Ветеран Грязевых Рапторов",
        Price = 8000,
        Limit = 2,
        IsLimitGlobal = true,
        PricePerLimit = 1000,
        Enabled = true,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("Mudraptor_veteran", client)
        end
    },

    {
        Name = "Появится как Блокиратор",
        Price = 50000,
        Limit = 1,
        IsLimitGlobal = true,
        PricePerLimit = 50000,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("latcher", client)
        end
    },

    {
        Name = "Появится как Харибда",
        Price = 80000,
        Limit = 1,
        IsLimitGlobal = true,
        PricePerLimit = 50000,
        Timeout = 60,

        Action = function (client, product, items)
            SpawnCreature("charybdis", client)
        end
    },

    {
        Name = "Появится как Арахис",
        Price = 50,
        Limit = 2,
        IsLimitGlobal = false,

        Action = function (client, product, items)
            SpawnCreature("peanut", client, true)
        end
    },

    {
        Name = "Появится как Оранжевый Парень",
        Price = 50,
        Limit = 2,
        IsLimitGlobal = false,

        Action = function (client, product, items)
            SpawnCreature("orangeboy", client, true)
        end
    },

    {
        Name = "Появится как Ктулху",
        Price = 50,
        Limit = 2,
        IsLimitGlobal = false,

        Action = function (client, product, items)
            SpawnCreature("balloon", client, true)
        end
    },

    {
        Name = "Появится как Псиложаба",
        Price = 50,
        Limit = 2,
        IsLimitGlobal = false,

        Action = function (client, product, items)
            SpawnCreature("psilotoad", client, true)
        end
    },
}

return category