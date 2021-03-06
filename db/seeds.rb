user = User.create(email: "test@test.com", password: "password")
"meal"
Meal.create!([
  {
    name: "Menu 1",
    user: user,
  },
  {
    name: "Menu 2",
    user: user,
  },
  {
    name: "Menu 3",
    user: user,
  },
])
p "aliment"
Aliment.create!([
  {
    name: "tomate",
    infos: {
        "proteins": 100,
        "carbs": 100,
        "lipid": 100,
        "kcal": 100
      }
  },
  {
    name: "oignons",
    infos: {
        "proteins": 100,
        "carbs": 100,
        "lipid": 100,
        "kcal": 100
      }
  },
  {
    name: "poivrons",
    infos: {
        "proteins": 100,
        "carbs": 100,
        "lipid": 100,
        "kcal": 100
      }
  }
])
p "--------------ingredient"
Ingredient.create!([
    {
      aliment: Aliment.find(1),
      meal: Meal.find(1),
      quantity: 100
    },
    {
      aliment: Aliment.find(2),
      meal: Meal.find(1),
      quantity: 100
    },
    {
      aliment: Aliment.find(3),
      meal: Meal.find(1),
      quantity: 100
    },
  ])
p "fin"

p Meal.all