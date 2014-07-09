# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding the database..."

# Reset the seeds for static data


# Runs certain seeds against development or production
case Rails.env
when "production"
when "development"
  Item.delete_all

  # Seed the development database with test items
  lambda {
    item = Item.new
    item.id = 10001
    item.name = "Test Men's Shirt"
    item.gender = "Male"
    item.description = "Objective: To obtain a position in the industry"
    item.save!
  }.call 

  lambda {
    item = Item.new
    item.id = 10002
    item.name = "Test Women's Shirt"
    item.gender = "Female"
    item.description = "No Real World Experience"
    item.save!
  }.call 

  lambda {
    item = Item.new
    item.id = 10003
    item.name = "Test Unisex Shirt"
    item.gender = "Unisex"
    item.description = "Great Oral and Written Communication Skills"
    item.save!
  }.call 
end