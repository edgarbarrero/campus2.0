# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' },{ name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Topic.destroy_all
Question.destroy_all

titles = ['Economía circular para los RCD',
          'Producción de RCD ',
          'Agentes que intervienen y control de los RCD',
          'Tecnología para la gestion y reciclaje de RCD']
questions = ["¿Lorem ipsum dolor sit amet consectetur adipiscing elit. Nunc eleifend dolor?",
             "¿quis pharetra iaculis. Donec porta a enim a mollis. Proin ut maximus magna?",
             "¿Aliquam erat volutpat. Ut fringilla mauris vitae egestas suscipit?",
             "¿Vestibulum a nulla aliquet, posuere sapien et, volutpat diam. Nam ac elit velit?",
             "¿Lorem ipsum dolor sit amet consectetur adipiscing elit. Nunc eleifend dolor?",
             "¿quis pharetra iaculis. Donec porta a enim a mollis. Proin ut maximus magna?",
             "¿Aliquam erat volutpat. Ut fringilla mauris vitae egestas suscipit?",
             "¿Vestibulum a nulla aliquet, posuere sapien et, volutpat diam. Nam ac elit velit?",
             "¿Lorem ipsum dolor sit amet consectetur adipiscing elit. Nunc eleifend dolor?",
             "¿quis pharetra iaculis. Donec porta a enim a mollis. Proin ut maximus magna?"]

answers = ["amet consectetur adipiscing elit.",
           " Donec porta a enim a mollis.",
           " Ut fringilla mauris vi",
           "quet, posuere sapien et, volutpat dia"]

titles.each_with_index do |title, i|
  Topic.create(title: title)
  questions.each do |text|
    Question.create(text: text,
                    topic_id: i,
                    answer1: answers[0],
                    answer2: answers[1],
                    answer3: answers[2],
                    correct_answer: 3)

  end
end
