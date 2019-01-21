# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create :email => "test@abc.com"
#
# rails generate model User email:text password_digest:text admin:boolean name:text
# dob:text image:text address:text phone:text companyname:text companyaddress:text
# companywebsite:text companycontactinfo:text
# Work.update :user_id => 6

u1 = User.create :email => 'test4@ga.co', :password => 'chicken', :admin => true, :image => ''
u2 = User.create :email => 'test5@ga.co', :password => 'chicken'
