puts "Deleting current database entries..."
# Teacher.destroy_all
User.destroy_all

puts "Creating users"
rudy = User.create!(email: "rudy@rudy.com", password: "123456")
nic = User.create!(email: "nic@nic.com", password: "123456")
toni = User.create!(email: "toni@toni.com", password: "123456")

puts "Creating teachers"
Teacher.create!(
  name: "Rudy",
  experience: "3 years of TA'ing in Berlin",
  superpower: "Ruby",
  batch_number: 1141,
  user: rudy
)
Teacher.create!(
  name: "Nic",
  experience: "Still is a Berlin tour guide",
  superpower: "JavaScript",
  batch_number: 1141,
  user: nic
)
Teacher.create!(
  name: "Toni",
  experience: "Is a full-time employee at Le Wagon",
  superpower: "Fly",
  batch_number: 1140,
  user: toni
)
