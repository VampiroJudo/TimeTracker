# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

projectA = Project.create(name: "Ironhack", description: "Coding Bootcamp")
projectB = Project.create(name: "Alpha", description: "Coffee Company/Classified")
projectC = Project.create(name: "Beta", description: "Systems Analysis Corp")
projectD = Project.create(name: "Charlie", description: "SigInt Analysis Company") 
projectE = Project.create(name: "BlackWater", description: "Military Contracting Company")
projectF = Project.create(name: "Synchtronic", description: "Information Retrieval Service")
projectG = Project.create(name: "Strange Sights", description: "Avant Garde Travel Company")
projectH = Project.create(name: "Recoverable.Inc", description: "UFO Retrieval Service")
projectI = Project.create(name: "MK Ultra", description: "Information Restricted")
projectJ = Project.create(name: "Singularity", description: "Sub-Branch of NASA")

puts "done"