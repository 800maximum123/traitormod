local language = {}
language.Name = "Russian"

language.Help = "\n!help - shows this help message\n!helptraitor - shows all traitor commands\n!helpadmin - lists all admin commands\n!traitor - show traitor information\n!pointshop - opens the point shop\n!points - show your points and lives\n!alive - list alive players (only while dead)\n!locatesub - shows you the distance and direction of the submarine, only for monsters\n!suicide - kills your character\n!version - shows running version of the traitormod"
language.HelpTraitor = "\n!toggletraitor - toggles if the player can be selected as traitor\n!tc [msg] - sends a message to all traitors\n!tdm [Name] [msg] - sends a anonymous msg to given player"
language.HelpAdmin = "\n!traitoralive - check if all traitors died\n!roundinfo - show round information (spoiler!)\n!allpoints - shows point amounts of all connected clients\n!addpoint [Client] [+/-Amount] - add points to a client\n!addlife [Client] [+/-Amount] - add life(s) to a client\n!revive [Client] - revives a given client character\n!void [Character Name] - sends a character to the void\n!unvoid [Character Name] - brings a character back from the void\n!vote [text] [option1] [option2] [...] - starts a vote on the server"

language.NoTraitor = "Ты не предатель."
language.TraitorOn = "Теперь ты можешь быть выбран предателем."
language.TraitorOff = "Теперь ты не можешь быть выбран предателем\n\nИспользуй !toggletraitor, чтобы изменить это."
language.RoundNotStarted = "Раунд не начался."

language.AllTraitorsDead = "Все предатели и культисты мертвы!"
language.TraitorsAlive = "Предатели все еще ходят вокруг"

language.Alive = "Жив"
language.Dead = "Мёртв"

language.KilledByTraitor = "Печальная смерть от рук предателя на секретном задании."

language.TraitorWelcome = "Ты предатель!"
language.TraitorDeath = "Ты провалил свою миссию. Как результат:Миссия отменена и скоро ты вернешься как член экипажа.\n\nТы больше не предатель, увы!"
language.TraitorDirectMessage = "Вы получили секретное сообщение от предателя:\n"
language.TraitorBroadcast = "[Предатель %s]: %s"

language.AgentNoticeCodewords = "There are other agents on this submarine. You dont know their names, but you do have a method of communication. Use the code words to greet the agent and code response to respond. Disguise such words in a normal-looking phrase so the crew doesn't suspect anything."

language.AgentNoticeNoCodewords = "Кроме тебя внедрены и другие оперативники. Ты помнишь их имена, так что скооперируйся с ними, дабы иметь больше шансов для выполнения задач."

language.AgentNoticeOnlyTraitor = "Ты единственный оперативник на борту. Удачи."

language.RoundSummary = "| Round Summary |"
language.Gamemode = "Режим: %s"
language.RandomEvents = "Случайный ивент: %s"
language.ObjectiveCompleted = "Выполненные задания: %s"
language.ObjectiveFailed = "Проваленные задания: %s"

language.CrewWins = "Экипаж успешно выполнил поставленную задачу!"
language.TraitorHandcuffed = "Жалкий предатель был задержан! %s."
language.TraitorsWin = "Предатель успешно выполнил поставленную задачу!"

language.TraitorsRound = "Предатели в этом раунде:"
language.NoTraitors = "Предателей не осталось."
language.TraitorAlive = "Ты пережил смену как предатель."

language.PointsInfo = "У тебя есть %s поинтов и %s/%s жизней."
language.TraitorInfo = "Твои шансы стать предателем %s%%, относительно к другим членом экипажа."

language.Points = " (%s Очков)"
language.Experience = " (%s XP)"

language.SkillsIncreased = "Хорошая работа над улучшением своих навыков."
language.PointsAwarded = "Ты был вознагражден %s очков."
language.PointsAwardedRound = "За этот раунд тебе дали:\n%s очков"
language.ExperienceAwarded = "Ты получил %s XP."

language.LivesGained = "You gained %s. You now have %s/%s Lives."
language.ALife = "одна жизнь"
language.Lives = " жизнейs"
language.Death = "Ты потерял жизнь. У тебя осталось %s , пред тем как ты потеряешь очки."
language.NoLives = "Ты потерял все жизни. Как результат ты теряешь несколько очков."
language.MaxLives = "Ты достиг максимума жизней."

language.Codewords = "Зов: %s"
language.CodeResponses = "Отклик: %s"

language.OtherTraitors = "Предатели: %s"

language.CommandTip = "(Введи !traitor в чат чтобы показать это сообщение еще раз.)"
language.CommandNotActive = "Это команда отключена."

language.Completed = " (Выполнено)"

language.Objective = "Основные задачи:"
language.SubObjective = "Дополнительные задачи (опционально):"

language.NoObjectives = "Нет задач."
language.NoObjectivesYet = "Все еще нет целей..."

language.ObjectiveAssassinate = "Ликвидируйте %s."

language.ObjectiveSurvive = "Выполните как минимум одну задачу и переживите смену."
language.ObjectiveStealCaptainID = "Своруйте карту Капитана."
language.ObjectiveKidnap = "Арестуй %s на %s секунд."
language.ObjectivePoisonCaptain = "Отрави %s с помощью %s."
language.ObjectiveWreckGift = "Забери подарок"

language.ObjectiveText = "Assassinate the crew in order to complete your mission."

language.AssassinationNextTarget = "Скройтесь до следующих указаний."
language.AssassinationNewObjective = "Твоя следующая цель это %s."
language.HuskNewObjective = "Проведите инъекцию экстракта каликса следующей цели %s."
language.AssassinationEveryoneDead = "Хорошая работа, агент! Ты сделал это!"

language.ItemsBought = "Предмет куплен из магазина очков"
language.CrewBoughtItem = "Игроки купили предмет из магазина очков"
language.PointsGained = "Всего очков получено"
language.PointsLost = "Всего очков потеряно"
language.Spawns = "Заспавнен гуманойд"
language.Traitor = "Выбран предателем"
language.TraitorDeaths = "Погиб за предателя"
language.TraitorMainObjectives ="Основная задача выполнена"
language.TraitorSubObjectives = "Дополнительная задача выполнена"
language.CrewDeaths = "Смерти"
language.Rounds = "Статистика раунда"

return language