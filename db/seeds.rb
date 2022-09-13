# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Category.create(name: "Non-Profit Projects");
Category.create(name: "Games");

Project.create(
    name: "Project Test 1",
    objective: "Created to make sure that this works...",
    why: "It's the first piece of data.",
    learn: "Create Rails API",
    category_id: 1
)