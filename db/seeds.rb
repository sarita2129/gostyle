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
# User.destroy.all
# u1 = User.create :email => 'test4@ga.co', :password => 'chicken', :admin => true, :image => ''
# u2 = User.create :email => 'test5@ga.co', :password => 'chicken'
u1 = User.find_by :email => 'test4@ga.co'
w1 = Work.create :title => 'BLOSSOM JERSEY DRESS',:image => 'http://www.bodenimages.com/productimages/zoom/18waut_j0233_nav_w02.jpg', :description => "There's no denying it: every woman needs a statement dress. Behold this scattered-flower print – designed in-house, of course – crafted from a drapey fabric so comfortable you'll never want to take it off. We've added fluted sleeves and a full skirt for an elegant touch, while subtle gathers at the front and back give it that figure-skimming WOW factor."

u1.works << w1
