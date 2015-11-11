## Pizza Parlor

This exercise is designed to help us discuss designing programs
for testability, especially when working with external dependencies
such as a required data import task.

### Structure

````
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
````

### Assignment

Complete this exercise by building out the following 2 classes:

1. A `Topping` class which can be created with three values: `name`,`price`,
and an `is_vegetarian` value. The Topping should expose methods for each of
these values, and the `is_vegetarian` should return a boolean
2. A `ToppingsMenu` class which can hold a collection of `Topping` objects.
The `ToppingsMenu` should also feature a `load_menu` method which accepts
a filepath to a CSV and creates appropriate `Topping` objects for each
row in the file
3. The `ToppingsMenu` should provide a method `find_by_name` which accepts
a topping name (a string) and returns the `Topping` instance which
matches that name


__Example Usage__

```ruby
tm = ToppingMenu.new
tm.load_data("./data/toppings.csv")
t = tm.find_by_name("anchovies")
t.name
=> "anchovies"
```
