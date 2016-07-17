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


TimeEntry.create(project_id: projectB.id, hours: 2, minutes: 30)
TimeEntry.create(project_id: projectC.id, hours: 4, minutes: 15)
TimeEntry.create(project_id: projectD.id, hours: 1, minutes: 10)
TimeEntry.create(project_id: projectE.id, hours: 3, minutes: 40)
TimeEntry.create(project_id: projectF.id, hours: 5, minutes: 15)
TimeEntry.create(project_id: projectG.id, hours: 0, minutes: 25)
TimeEntry.create(project_id: projectH.id, hours: 6, minutes: 50)
TimeEntry.create(project_id: projectI.id, hours: 3, minutes: 25)
TimeEntry.create(project_id: projectJ.id, hours: 2, minutes: 45)

# projectJ.time_entries.create(hours: 2, minutes: 45)


[*1..100].each do | num |
    p = Project.new(name: "Project number #{num}", description: "Description for project number #{num}")
    p.save
    p.entries.create(hours: num, minutes: (rand * 11).floor, date: Date.current + num.hours)
end


puts "done"