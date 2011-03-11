# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

Games.delete_all
User.delete_all

new_admin = User.create!(:username=> 'administrator', :firstname=> 'Jade', :lastname=> 'Forrest', :email=>'admin@admin.com', :password=>'password', :password_confirmation=>'password',:admin=>'true', :last_login_at => Time.now)
new_member = User.create!(:username=> 'member', :firstname=> 'Rainbow', :lastname=> 'Dash', :email=>'member@member.com', :password_confirmation=>'password', :password=>'password', :last_login_at => Time.now)

15.times do
Games.create!(:title=> 'Beyond Good and Evil', :description=> 'Amazing', :user=> new_admin, :user_id=> new_admin.id)
end

8.times do
Games.create!(:title=> 'My Little Pony', :description=> 'Good', :user=> new_member, :user_id=> new_member.id)
end