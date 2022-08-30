# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

categories = Category.create!([{title: 'История'}, {title: 'Музыка'}])
users = User.create!([{login: 'Иван', password: '123'}, {login: 'John', password: '234'}])
tests = Test.create!([
   {title: 'Египет', level: 1, author: users[0], category: categories[0]},
   {title: 'Рим', level: 2, author: users[0], category: categories[0]},
   {title: 'Русь', level: 3, author: users[1], category: categories[0]},
   {title: 'Творчество русских композиторов', level: 3, author: users[0], category: categories[1]},
   {title: 'Тест по музыке', level: 3, author: users[1], category: categories[1]}])

questions = Question.create!([
   {body: 'Первая столица Египта', test: tests[0]}, #0
   {body: 'Река Египта', test: tests[0]}, #1
   {body: 'Сооружение для орошения полей в Египте', test: tests[0]}, #2
   {body: 'Островок зелени в пустыне', test: tests[0]}, #3
   {body: 'Главный бог Египта', test: tests[0]}, #4

   {body: 'Полуостров, на котором расположена Италия', test: tests[1]}, #5
   {body: 'Ликторами называли', test: tests[1]}, #6
   {body: 'На скольких холмах расположен Рим?', test: tests[1]}, #7
   {body: 'По легенде близнецы Ромул и Рем были вскормлены', test: tests[1]}, #8
   {body: 'Рим стал хозяином всего средиземноморья после', test: tests[1]}, #9

   {body: 'В каком году славяне призвали Рюрика?', test: tests[2]}, #10
   {body: 'Кто из дружинников захватил Киев?', test: tests[2]}, #11
   {body: 'Какой торговый путь был самым знаменитым в IX веке?', test: tests[2]}, #12
   {body: 'Годы правления Вещего Олега', test: tests[2]}, #13
   {body: 'Как звали сына Рюрика?', test: tests[2]}, #14

   {body: 'Какие инструменты входят в состав русского народного оркестра?', test: tests[3]}, #15
   {body: 'Лирическое стихотворение, положенное на музыку называется', test: tests[3]}, #16
   {body: 'Кто сочинил музыку к драме "Пер Гюнт" Г. Ибсена?', test: tests[3]}, #17
   {body: 'Музыкальное произведение для голоса без слов называется', test: tests[3]}, #18
   {body: 'Какое симфоническое произведение на основе русской сказки сочинил А.К. Лядов?', test: tests[3]}, #19

   {body: 'Композитор это', test: tests[4]}, #20
   {body: 'Назовите композитора оперы "Сказка о Царе-Салтане"', test: tests[4]}, #21
   {body: 'Какому композитору принадлежит цикл "Времена года"?', test: tests[4]}, #22
   {body: 'Кто автор балета "Золушка"?', test: tests[4]}, #23
   {body: 'Кто автор балета "Лебединое озеро"?', test: tests[4]}]) #24

Answer.create!([
   {body: 'Мемфис', question: questions[0], correct: true},
   {body: 'Фивы', question: questions[0]},
   {body: 'Афины', question: questions[0]},

   {body: 'Нил', question: questions[1], correct: true},
   {body: 'Амазонка', question: questions[1]},
   {body: 'Евфрат', question: questions[1]},

   {body: 'шадуф', question: questions[2]},
   {body: 'каналы', question: questions[2], correct: true},
   {body: 'амулеты', question: questions[2]},

   {body: 'остров', question: questions[3]},
   {body: 'Оазис', question: questions[3], correct: true},
   {body: 'шадуф', question: questions[3]},

   {body: 'Эа', question: questions[4]},
   {body: 'Анубис', question: questions[4]},
   {body: 'Амонр-Ра', question: questions[4], correct: true},
   {body: 'Бастет', question: questions[4]},

   {body: 'Балканским', question: questions[5]},
   {body: 'Аравийским', question: questions[5]},
   {body: 'Апеннинским', question: questions[5], correct: true},

   {body: 'служителей богов', question: questions[6]},
   {body: 'правителей Рима', question: questions[6], correct: true},
   {body: 'воинов, сопровождавших царя', question: questions[6]},

   {body: 'двух', question: questions[7]},
   {body: 'пяти', question: questions[7]},
   {body: 'семи', question: questions[7], correct: true},
   {body: 'шести', question: questions[7]},

   {body: 'Львица', question: questions[8]},
   {body: 'Волчица', question: questions[8], correct: true},
   {body: 'Тигрица', question: questions[8]},
   {body: 'Обезъяна', question: questions[8]},

   {body: 'завоевания Египта', question: questions[9], correct: true},
   {body: 'изгнания Тарквиния Гордого', question: questions[9]},
   {body: 'окончания войны с царем Пирром', question: questions[9]},
   {body: 'окончания войны с Карфагеном', question: questions[9]},

   {body: '862 год', question: questions[10], correct: true},
   {body: '988 год', question: questions[10]},
   {body: '989 год', question: questions[10]},
   {body: '880 год', question: questions[10]},

   {body: 'Аскольд и Дир', question: questions[11], correct: true},
   {body: 'Святослав', question: questions[11]},
   {body: 'Пересвет', question: questions[11]},
   {body: 'Борис и Глеб', question: questions[11]},

   {body: 'Днепровский', question: questions[12]},
   {body: 'Из варяг в греки', question: questions[12], correct: true},
   {body: 'Балтийский', question: questions[12]},
   {body: 'Киевский', question: questions[12]},

   {body: '862-879', question: questions[13]},
   {body: '879-912', question: questions[13], correct: true},
   {body: '912-945', question: questions[13]},
   {body: '945-972', question: questions[13]},

   {body: 'Олег', question: questions[14]},
   {body: 'Игорь', question: questions[14], correct: true},
   {body: 'Святослав', question: questions[14]},
   {body: 'Владимир', question: questions[14]},

   {body: 'Труба, волторна, туба', question: questions[15]},
   {body: 'Скрипка, виолончель', question: questions[15]},
   {body: 'Балалайка, дорма, гусли', question: questions[15], correct: true},

   {body: 'Вокализ', question: questions[16]},
   {body: 'Романс', question: questions[16], correct: true},
   {body: 'Танец', question: questions[16]},

   {body: 'Э. Григ', question: questions[17], correct: true},
   {body: 'П.И. Чайковский', question: questions[17]},
   {body: 'М.И. Глинка', question: questions[17]},

   {body: 'Пенся', question: questions[18]},
   {body: 'Танец', question: questions[18]},
   {body: 'Вокализ', question: questions[18], correct: true},

   {body: 'Баба-Яга', question: questions[19], correct: true},
   {body: 'Аленький цветочек', question: questions[19]},
   {body: 'Золушка', question: questions[19]},

   {body: 'исполнитель', question: questions[20]},
   {body: 'автор', question: questions[20], correct: true},
   {body: 'зритель', question: questions[20]},

   {body: 'Григ', question: questions[21]},
   {body: 'Чайковский', question: questions[21]},
   {body: 'Римский-Корсаков', question: questions[21], correct: true},

   {body: 'С. Прокофьев', question: questions[22]},
   {body: 'В. Моцарт', question: questions[22]},
   {body: 'П. Чайковский', question: questions[22], correct: true},

   {body: 'С. Прокофьев', question: questions[23], correct: true},
   {body: 'М. Глинка', question: questions[23]},
   {body: 'С. Рахманинов', question: questions[23]},

   {body: 'Э. Григ', question: questions[24]},
   {body: 'П. Чайковский', question: questions[24], correct: true},
   {body: 'Д. Шостакович', question: questions[24]}])
