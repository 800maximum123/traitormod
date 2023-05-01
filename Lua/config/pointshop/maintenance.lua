local category = {}

category.Name = "Техническое"

category.Products = {
    {
        Name = "Отвертка",
        Price = 90,
        Limit = 1,
        Items = {"screwdriver"}
    },

    {
        Name = "Гаечный ключ",
        Price = 90,
        Limit = 1,
        Items = {"wrench"}
    },

    {
        Name = "Сварка",
        Price = 160,
        Limit = 4,
        Items = {"weldingtool", "weldingfueltank"}
    },

    {
        Name = "Гранаты с Монтажной пеной",
        Price = 190,
        Limit = 4,
        Items = {"fixfoamgrenade", "fixfoamgrenade"}
    },

    {
        Name = "Ремнабор",
        Price = 140,
        Limit = 4,
        Items = {"repairpack", "repairpack", "repairpack", "repairpack"}
    },

    {
        Name = "Топливные стержни плохого качества.",
        Price = 260,
        Limit = 10,

        Items = {{Identifier = "fuelrod", Condition = 9}},
    },
}

return category