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
require "open-uri"

Project.destroy_all

puts "Project creation in process"

p1 = Project.new(name: "Momi Crouzet photographer", project_type: "Web development", description: "Showcase website of Momi Crouzet, a Japanese professional photographer based in Paris", technical_skills: "wordpress with divi, css" , url: "https://momicrouzet.com")
photo = URI.open('https://res.cloudinary.com/dnmgsdi4z/image/upload/v1618580160/portfolio/MomiCrouzet_landingPage_gbvufe.png')
p1.photo.attach(io: photo, filename: "MomiCrouzetLandingPage.png", content_type: "image/png")
p1.save!

p2 = Project.new(name: "mySofie", project_type: "Web development", description: "Website of mySofie, an app which helps you follow-up & optimize you health budget", technical_skills: "wordpress with divi, html, css, ruby on rails" , url: "https://mysofie.fr")
photo = URI.open('https://res.cloudinary.com/dnmgsdi4z/image/upload/v1615367986/Capture_d_e%CC%81cran_2021-03-10_a%CC%80_10.17.36_kczioo.png')
p2.photo.attach(io: photo, filename: "mySofieLandingPage.png", content_type: "image/png")
p2.save!

p3 = Project.new(name: "Glutenfree Please!", project_type: "Web development", description: "Gluten Free please is a recipe sharing platform for glutenfree foodies", technical_skills: "ruby on rails, html, css" , url: "https://glutenfreeplease.herokuapp.com/")
photo = URI.open('https://res.cloudinary.com/dnmgsdi4z/image/upload/v1609765788/portfolio/LPglutenfreeplease_xak5wm.png')
p3.photo.attach(io: photo, filename: "glutenfreeplease.jpg", content_type: "image/jpg")
p3.save!


p4 = Project.new(name: "Head in the Clouds", project_type: "Retail project", description: "Brand animation for Issey Miyake Parfums in Copenhagen Airport", url: "")
photo = URI.open('https://res.cloudinary.com/dnmgsdi4z/image/upload/v1609854354/HITC_CPH_dpb2of.png')
p4.photo.attach(io: photo, filename: "IMHITC.png", content_type: "image/png")
p4.save!

p5 = Project.new(name: "Zadig&Voltaire fragrance launch", project_type: "Retail project", description: "Podium for the launch of Zadig & Voltaire fragrance for her and for him in Paris Airport", url: "")
photo = URI.open('https://res.cloudinary.com/dnmgsdi4z/image/upload/v1609770384/lnrj2k0ekux5wt6idocbjofobdfv.png')
p5.photo.attach(io: photo, filename: "ZVpodium.jpg", content_type: "image/png")
p5.save!

p6 = Project.new(name: "D&G cosmetics corner", project_type: "Retail project", description: "Dolce & Gabbana cosmetics corner in Bahrain Airport", url: "")
photo = URI.open('https://res.cloudinary.com/dnmgsdi4z/image/upload/v1609858928/DGCorner_oznwgw.jpg')
p6.photo.attach(io: photo, filename: "DGcorner.jpg", content_type: "image/jpg")
p6.save!

p7 = Project.new(name: "Mr Burberry Launch", project_type: "Retail project", description: "Podium for the launch of Mr Burberry fragrance in Barcelona Airport", url: "")
photo = URI.open('https://res.cloudinary.com/dnmgsdi4z/image/upload/v1609767921/portfolio/BBY_BCN_uxbj31.png')
p7.photo.attach(io: photo, filename: "BBYBCN.jpg", content_type: "image/png")
p7.save!

p8 = Project.new(name: "Elie Saab fragrance launch", project_type: "Retail Project", description: "Podium for the launch of Elie Saab Le Parfum in Dubai Airport", url: "")
photo = URI.open('https://res.cloudinary.com/dnmgsdi4z/image/upload/v1609767937/portfolio/ES_DDF_m7l4o7.jpg')
p8.photo.attach(io: photo, filename: "ESDDF.jpg", content_type: "image/jpg")
p8.save!

p9 = Project.new(name: "Sisley corner", project_type: "Retail Project", description: "Sisley cosmetics 3 axes corner in Brussels Airport ", url: "")
photo = URI.open('https://res.cloudinary.com/dnmgsdi4z/image/upload/v1610015090/Sisley_Brussels_ccomhy.png')
p9.photo.attach(io: photo, filename: "Sisley_Brussels.png", content_type: "image/png")
p9.save!

puts "#{Project.count} projects créés !"
