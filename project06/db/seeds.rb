# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

#Game.delete_all
User.delete_all

new_admin = User.create!(:username=> 'administrator', :firstname=> 'ad', :lastname=> 'min', :email=>'admin@admin.com', :password=>'password', :password_confirmation=>'password',:admin=>'true')
new_member = User.create!(:username=> 'member', :firstname=> 'mem', :lastname=> 'ber', :email=>'member@member.com', :password_confirmation=>'password', :password=>'password')

15.times do
Game.create!(:title=> 'Beyond Good and Evil', :description=> 'Amazing', :user=> new_admin, :author_id=>0)
end

#8.times do
#Game.create!(:title=> 'My Little Pony', :description=> 'Good', :user=> new_member)
#end