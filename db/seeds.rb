# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ---------------------
# Creation des projets
# ---------------------

Project.destroy_all

puts "Project creation in process"

p1 = Project.new(name: "Glutenfree Please!", project_type: "Web development", description: "Gluten Free please is a recipe sharing platform for glutenfree foodies", url: "https://glutenfreeplease.herokuapp.com/")
project_photo = URI.open('https://res.cloudinary.com/dnmgsdi4z/image/upload/v1609765788/portfolio/LPglutenfreeplease_xak5wm.png')
p1.project_photo.attach(io: project_photo, filename: "LPglutenfreeplease_xak5wm.png", content_type: "image/png")
p1.save!

p2 = Project.new(name: "SimplyRest", project_type: "Web development", description: "SimplyRest is a tool which keeps track of food cost and improve restaurant margins by automating stocks and orders ", url: "https://simplyrest-sovrmn.herokuapp.com/")
project_photo = URI.open('https://res.cloudinary.com/dnmgsdi4z/image/upload/v1609766806/portfolio/SimplyRestOrder_ast9wr.png')
p2.project_photo.attach(io: project_photo, filename: "SimplyRestOrder_ast9wr.png", content_type: "image/jpg")
p2.save!

p3 = Project.new(name: "Head in the Clouds", project_type: "Retail project", description: "Brand animation for Issey Miyake Parfums in Copenhagen Airport", url: "")
project_photo = URI.open('')
p3.project_photo.attach(io: project_photo, filename: "HITCshort_cndlak.mp4", content_type: "video/mp4")
p3.save!

p4 = Project.new(name: "Zadig&Voltaire fragrance launch", project_type: "Retail project", description: "Podium for the launch of Zadig & Voltaire fragrance for her and for him in Paris Airport", url: "")
project_photo = URI.open('https://res.cloudinary.com/dnmgsdi4z/image/upload/v1609767282/portfolio/podiumZV_tczl9f.png')
p4.project_photo.attach(io: project_photo, filename: "podiumZV_tczl9f.png", content_type: "image/png")
p4.save!

p5 = Project.new(name: "D&G cosmetics corner", project_type: "Retail project", description: "Dolce & Gabbana cosmetics corner in Bahrain Airport", url: "")
project_photo = URI.open('https://res.cloudinary.com/dnmgsdi4z/image/upload/v1609767487/portfolio/DGCorner_qpfxzy.jpg')
p5.project_photo.attach(io: project_photo, filename: "DGCorner_qpfxzy.jpg", content_type: "image/jpg")
p5.save!

p6 = Project.new(name: "Mr Burberry Launch", project_type: "Retail project", description: "Podium for the launch of Mr Burberry fragrance in Barcelona Airport", url: "")
project_photo = URI.open('https://res.cloudinary.com/dnmgsdi4z/image/upload/v1609767921/portfolio/BBY_BCN_uxbj31.png')
p6.project_photo.attach(io: project_photo, filename: "BBY_BCN_uxbj31.png", content_type: "image/png")
p6.save!

p7 = Project.new(name: "Elie Saab fragrance launch", project_type: "Podium for the launch of Elie Saab Le Parfum in Dubai Airport", description: "Retail Project", url: "")
project_photo = URI.open('https://res.cloudinary.com/dnmgsdi4z/image/upload/v1609767937/portfolio/ES_DDF_m7l4o7.jpg')
p7.project_photo.attach(io: project_photo, filename: "ES_DDF_m7l4o7.jpg", content_type: "image/jpg")
p7.save!

puts "#{Project.count} projects créés !"
