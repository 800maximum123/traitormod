local category = {}

category.Name = "Другое"

category.Products = {
    {
        Name = "Ящик с боеприпасами для магнитной пушки",
        Price = 145,
        Limit = 3,
        Items = {"coilgunammobox"}
    },

    {
        Name = "Фрагмент панциря Молоха",
        Price = 340,
        Limit = 1,
        Items = {"shellshield"}
    },

    {
        Name = "Одноразовый водолазный скафандр",
        Price = 400,
        Limit = 1,
        Items = {"respawndivingsuit"}
    },

    {
        Name = "Подводная маска",
        Price = 280,
        Limit = 1,
        Items = {"divingmask"}
    },

    {
        Name = "Гудок Хонка",
        Price = 350,
        Limit = 10,
        Items = {"bikehorn"}
    },

    {
        Name = "Гитара",
        Price = 50,
        Limit = 2,
        Items = {"guitar"}
    },

    {
        Name = "Гармоника",
        Price = 50,
        Limit = 2,
        Items = {"harmonica"}
    },

    {
        Name = "Аккордион",
        Price = 50,
        Limit = 2,
        Items = {"accordion"}
    },

    {
        Name = "Жетон с именем для животного",
        Price = 30,
        Limit = 5,
        Items = {"petnametag"}
    },

    {
        Name = "Дерьмо",
        Price = 10,
        Limit = 16,
        Items = {"poop"},
    },

    {
        Name = "Случайное яйцо",
        Price = 50,
        Limit = 5,
        Items = {"smallmudraptoregg", "tigerthresheregg", "crawleregg", "peanutegg", "psilotoadegg", "orangeboyegg", "balloonegg"},
        ItemRandom = true
    },

    {
        Name = "Бот-Ассистент",
        Price = 400,
        Limit = 5,
        Action = function (client, product, items)
            local info = CharacterInfo(Identifier("human"))
            info.Job = Job(JobPrefab.Get("assistant"))
            local character = Character.Create(info, client.Character.WorldPosition, info.Name, 0, false, true)
            character.TeamID = CharacterTeamType.Team1
            character.GiveJobItems(nil)
        end
    },
}

return category