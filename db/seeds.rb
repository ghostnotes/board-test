# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Job.delete_all

100.times do |i|
  Job.create!(
    title: i % 2 == 0 ? 'User Interface Designer' : 'User experience design specialist',
    category: i % 2 == 0 ? :in_house : :entrusted,
    headquarters: 'Japan',
    workplace: i % 2 == 0 ? 'Shibuya' : 'Shinjuku',
    description: "The origin of the word pizza is uncertain and debated. One popular suggestion holds that it originates from the Greek pita (derived from ancient Greek pēktos, πηκτός, meaning 'solid' or 'clotted'[11]). The ancient Greeks covered their bread with oils, herbs and cheese. The Romans developed placenta, a sheet of dough topped with cheese and honey and flavored with bay leaves. A popular contemporary legend holds that the archetypal pizza, Pizza Margherita, was invented in 1889, when the Royal Palace of Capodimonte commissioned the Neapolitan pizzaiolo (pizza maker) Raffaele Esposito to create a pizza in honor of the visiting Queen Margherita. Of the three different pizzas he created, the Queen strongly preferred a pie swathed in the colors of the Italian flag: red (tomato), green (basil), and white (mozzarella). Supposedly, this kind of pizza was then named after the Queen as 'Pizza Margherita',[12] although recent research casts doubt on this legend.[13] Pizza began being served in the United States with the arrival of Italian migrants, and the first pizzeria in the country, Lombardi's Pizza, opened in 1905.[14] After World War II many returning soldiers who were stationed in Italy created a high demand for the pizza they encountered and tasted in Italy. Since then pizza has evolved many variations. It can be deep-dish pizza, stuffed pizza, pizza pockets, pizza turnovers, rolled pizza, pizza-on-a-stick, all with combinations of sauce and toppings limited only by one's inventiveness.",
    how_to_apply: 'send an email.',
    company_name: 'Test' + i.to_s + ', Inc.',
    company_email: 'test' + i.to_s + '@test.test',
    company_url: 'http://test.test/' + i.to_s,
    company_logo_url: 'http://test.test/' + i.to_s + '/logo'
  )
end
