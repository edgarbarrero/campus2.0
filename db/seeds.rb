# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' },{ name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Topic.destroy_all

titles = ['Economía circular para los RCD',
          'Producción de RCD ',
          'Agentes que intervienen y control de los RCD',
          'Tecnología para la gestion y reciclaje de RCD']

titles.each_with_index do |title, i|
  Topic.create(title: title)
end
