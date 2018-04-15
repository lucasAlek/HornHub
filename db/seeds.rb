# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

require 'json'
require 'faker'

json_file =  JSON.parse(open("#{Rails.root}/db/assets/json_data_small.json").read)

json_file.each do |file|

  year = Year.new
  if(!Year.find_by year: file['year'])
    year.year = file['year']
    year.save
  end

  make = Make.new
  if(!Make.find_by make: file['make'])
    make.make = file['make']
    make.save
  end

  car = Car.new
    car.model = file['model']
    car.price = Faker::Number.between(1,10000)
    car.make_id = Make.find_by_make(file['make']).id
    car.year_id = Year.find_by_year(file['year']).id
    car.save

end
