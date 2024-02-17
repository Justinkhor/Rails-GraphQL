# Creating Menu
menu = Menu.create(identifier: "main_menu", label: "Main Menu", state: "Active", start_date: DateTime.new(2024,1,1), end_date: DateTime.new(2025,1,1))

# Creating "Appetizers" Section
appetizers_section = menu.sections.create(identifier: "appetizers", label: "Appetizers", description: "appetizers")

# Creating Items for "Appetizers" Section
salad = appetizers_section.items.create(identifier:"salad", label: "Salad", type: "Product", price: 8.99, description: "salad")
bread = appetizers_section.items.create(identifier:"bread", label: "Bread", type: "Product", price: 6.99, description: "bread")

# Creating "Mains" Section
mains_section = menu.sections.create(identifier:"mains", label: "Mains", description: "mains")

# Creating Items for "Mains" Section
burger = mains_section.items.create(identifier:"burger", label: "Burger", type: "Product", price: 12.99, description: "burger")
pizza = mains_section.items.create(identifier:"pizza", label: "Pizza", type: "Product", price: 14.99, description: "pizza")
pasta = mains_section.items.create(identifier:"pasta", label: "Pasta", type: "Product", price: 15.99, description: "pasta")

# Adding Modifier Groups for Configurable Items
burger_size_group = burger.modifier_groups.create(identifier:"burger_size", label: "Burger Size", selection_required_min: 1, selection_required_max: 1)
burger_toppings_group = burger.modifier_groups.create(identifier:"burger_toppings", label: "Burger Toppings", selection_required_min: 0, selection_required_max: 3)

pizza_size_group = pizza.modifier_groups.create(identifier:"pizza_size", label: "Pizza Size", selection_required_min: 1, selection_required_max: 1)
pizza_toppings_group = pizza.modifier_groups.create(identifier:"pizza_toppings", label: "Pizza Toppings", selection_required_min: 0, selection_required_max: 3)

pasta_type_group = pasta.modifier_groups.create(identifier:"pasta_type", label: "Pasta Type", selection_required_min: 1, selection_required_max: 1)
pasta_extras_group = pasta.modifier_groups.create(identifier:"extra_ingredients", label: "Extra Ingredients", selection_required_min: 0, selection_required_max: 3)

# Adding Modifiers for Modifier Groups
burger_size_group.modifiers.create(default_quantity: 1, item: Item.create(identifier:"regular", label: "Regular", type: "Component", price: 0.00, description: "regular"))
burger_size_group.modifiers.create(default_quantity: 1, item: Item.create(identifier:"large", label: "Large", type: "Component", price: 3.00, description: "large"))

burger_toppings_group.modifiers.create(default_quantity: 1, item: Item.create(identifier:"bacon", label: "Bacon", type: "Component", price: 5.00, description: "bacon"))
burger_toppings_group.modifiers.create(default_quantity: 1, item: Item.create(identifier:"mushrooms", label: "Mushrooms", type: "Component", price: 3.00, description: "mushroom"))
burger_toppings_group.modifiers.create(default_quantity: 1, item: Item.create(identifier:"onions", label: "Onions", type: "Component", price: 3.00, description: "onion"))

pizza_size_group.modifiers.create(default_quantity: 1, item: Item.create(identifier:"small", label: "Small", type: "Component", price: 0.00, description: "small"))
pizza_size_group.modifiers.create(default_quantity: 1, item: Item.create(identifier:"medium", label: "Medium", type: "Component", price: 3.00, description: "medium"))
pizza_size_group.modifiers.create(default_quantity: 1, item: Item.create(identifier:"large", label: "Large", type: "Component", price: 5.00, description: "large"))

pizza_toppings_group.modifiers.create(default_quantity: 1, item: Item.create(identifier:"extra_cheese", label: "Extra Cheese", type: "Component", price: 3.00, description: "extra_cheese"))
pizza_toppings_group.modifiers.create(default_quantity: 1, item: Item.create(identifier:"pepperoni", label: "Pepperoni", type: "Component", price: 5.00, description: "pepperoni"))
pizza_toppings_group.modifiers.create(default_quantity: 1, item: Item.create(identifier:"mushrooms", label: "Mushrooms", type: "Component", price: 3.00, description: "mushrooms"))

pasta_type_group.modifiers.create(default_quantity: 1, item: Item.create(identifier:"spaghetti", label: "Spaghetti", type: "Component", price: 0.00, description: "spaghetti"))
pasta_type_group.modifiers.create(default_quantity: 1, item: Item.create(identifier:"fettucine", label: "Fettuccine", type: "Component", price: 2.00, description: "fettucine"))
pasta_type_group.modifiers.create(default_quantity: 1, item: Item.create(identifier:"penne", label: "Penne", type: "Component", price: 2.00, description: "penne"))

pasta_extras_group.modifiers.create(default_quantity: 1, item: Item.create(identifier:"chicken", label: "Chicken", type: "Component", price: 5.00, description: "chicken"))
pasta_extras_group.modifiers.create(default_quantity: 1, item: Item.create(identifier:"shrimp", label: "Shrimp", type: "Component", price: 5.00, description: "shrimp"))
pasta_extras_group.modifiers.create(default_quantity: 1, item: Item.create(identifier:"broccoli", label: "Broccoli", type: "Component", price: 3.00, description: "broccoli"))
