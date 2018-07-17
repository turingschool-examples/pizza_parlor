## Pizza Parlor

This exercise is designed to help us discuss designing programs
for testability, especially when working with external dependencies
such as a required data import task.

### Structure

```
.
├── Gemfile
├── Gemfile.lock
├── README.md
├── data
│   └── toppings.csv
├── lib
│   ├── topping.rb
│   └── toppings_menu.rb
└── test
    ├── topping_test.rb
    └── toppings_menu_test.rb
```

### Assignment

Complete this exercise by building out the following 2 classes:

* A `Topping` class that can be created with three arguments: `name`, `price`, and `is_vegetarian`. The Topping should allow users to access these values, and `is_vegetarian` should return a boolean.
* A `ToppingsMenu` class which can hold a collection of `Toppings`. `ToppingsMenu` should also have the following methods:
    * `load_menu`: which accepts a path to a CSV and creates appropriate `Topping` objects for each row in the file.
    * `find_by_name`: accepts a topping name as a string and returns the `Topping` instance which matches that name.

Use TDD to build out these objects so that they can be used according to the following spec:

```ruby
topping = Topping.new({name: "Anchovies", price: "2", is_vegetarian: "no"})
topping.name
=> "Anchovies"
topping.price
=> 2
topping.is_vegetarian
=> false


tm = ToppingMenu.new
tm.find_by_name("anchovies")
=> nil
tm.load_menu("./data/toppings.csv")
tm.find_by_name("anchovies")
=> <#Topping>
t = tm.find_by_name("anchovies")
t..name
=> "anchovies"
```

### Questions

* What was easy to test?
* What was difficult to test?
* How might you refactor?
* Could you continue to refactor to include another class that completely encapsulates the reading of the CSV?
