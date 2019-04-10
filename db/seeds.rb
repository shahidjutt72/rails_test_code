# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Campaign.create_with(description: 'Ruby on Rails Developer', status: 'disabled').find_or_create_by(reference: '1')
Campaign.create_with(description: 'Senior Ruby on Rails Developer', status: 'disabled').find_or_create_by(reference: '2')
Campaign.create_with(description: 'React Developer', status: 'deleted').find_or_create_by(reference: '3')
