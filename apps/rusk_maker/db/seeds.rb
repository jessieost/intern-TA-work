# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Creating rusks..."

Rusk.delete_all

Rusk.create! name: "Rustic", base: "wheat", extras: "pecans", dippable: true, crunch_factor: 6