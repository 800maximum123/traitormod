local category = {}

category.Name = "Экспериментальное"

category.Products = {
    {
        Name = "Дверь",
        Price = 400,
        Limit = 4,
        Items = {
            {Identifier = "door", IsInstallation = true}
        }
    },

    {
        Name = "Люк",
        Price = 400,
        Limit = 4,
        Items = {
            {Identifier = "hatch", IsInstallation = true}
        }
    },

    {
        Name = "Supplies Cabinet",
        Price = 100,
        Limit = 6,
        Items = {
            {Identifier = "suppliescabinet", IsInstallation = true}
        }
    },

    {
        Name = "Генератор Кислорода",
        Price = 200,
        Limit = 6,
        Items = {
            {Identifier = "shuttleoxygenerator", IsInstallation = true}
        }
    },

    {
        Name = "Фабрикатор",
        Price = 230,
        Limit = 4,
        Items = {
            {Identifier = "fabricator", IsInstallation = true}
        }
    },

    {
        Name = "Деконструктор",
        Price = 235,
        Limit = 4,
        Items = {
            {Identifier = "deconstructor", IsInstallation = true}
        }
    },

    {
        Name = "Медицинский Фабрикатор",
        Price = 300,
        Limit = 4,
        Items = {
            {Identifier = "medicalfabricator", IsInstallation = true}
        }
    },

    {
        Name = "Научная станция",
        Price = 290,
        Limit = 4,
        Items = {
            {Identifier = "op_researchterminal", IsInstallation = true}
        }
    },

    {
        Name = "Мусорка",
        Price = 180,
        Limit = 8,
        Items = {
            {Identifier = "junctionbox", IsInstallation = true}
        }
    },

    {
        Name = "Батарея",
        Price = 300,
        Limit = 6,
        Items = {
            {Identifier = "battery", IsInstallation = true}
        }
    },

    {
        Name = "Супер Конденсатор",
        Price = 300,
        Limit = 4,
        Items = {
            {Identifier = "supercapacitor", IsInstallation = true}
        }
    },

    {
        Name = "Двигатель Шаттла",
        Price = 400,
        Limit = 3,
        Items = {
            {Identifier = "shuttleengine", IsInstallation = true}
        }
    },

    {
        Name = "Маленькая помпа",
        Price = 300,
        Limit = 3,
        Items = {
            {Identifier = "smallpump", IsInstallation = true}
        }
    },

    {
        Name = "Ядерный Реактор",
        Price = 1500,
        Limit = 1,
        Items = {
            {Identifier = "reactor1", IsInstallation = true}
        }
    },

    {
        Name = "Навигационный Терминал",
        Price = 370,
        Limit = 2,
        Items = {
            {Identifier = "navterminal", IsInstallation = true}
        }
    },

    {
        Name = "Камера",
        Price = 110,
        Limit = 5,
        Items = {
            {Identifier = "camera", IsInstallation = true}
        }
    },

    {
        Name = "Перископ",
        Price = 180,
        Limit = 5,
        Items = {
            {Identifier = "periscope", IsInstallation = true}
        }
    },

    {
        Name = "Лампа",
        Price = 50,
        Limit = 5,
        Items = {
            {Identifier = "lamp", IsInstallation = true}
        },
        Action = function (client, product, items)
            for key, value in pairs(items) do
                value.GetComponentString("LightComponent").IsOn = true
            end
        end
    },

    {
        Name = "Стул",
        Price = 25,
        Limit = 5,
        Items = {
            {Identifier = "opdeco_officechair", IsInstallation = true}
        },
    },

    {
        Name = "Двухъярусная Кровать",
        Price = 50,
        Limit = 5,
        Items = {
            {Identifier = "opdeco_bunkbeds", IsInstallation = true}
        },
    },

    {
        Name = "Провода",
        Price = 40,
        Limit = 8,
        Items = {
            {Identifier = "wire"}
        },
    },
}

return category