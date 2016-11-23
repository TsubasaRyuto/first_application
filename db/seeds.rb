# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
GraduatingClass.create(graduating_class: '舛井先生')
for i in 1..8
  graduating_class = "第#{i}期生"
  GraduatingClass.create(graduating_class: graduating_class)
end
