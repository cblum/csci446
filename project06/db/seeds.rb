# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

Game.delete_all
User.delete_all

new_admin = User.create!(:username=> 'administrator', :firstname=> 'Twilight', :lastname=> 'Sparkle', :email=>'admin@admin.com', :password=>'password', :password_confirmation=>'password',:role                  => Role.find_or_create_by_name("admin"), :last_login_at => Time.now, :current_login_at => Time.now)

new_member = User.create!(:username=> 'member', :firstname=> 'Rainbow', :lastname=> 'Dash', :email=>'member@member.com', :password_confirmation=>'password', :password=>'password', :role => Role.find_or_create_by_name("member"), :last_login_at => Time.now, :current_login_at => Time.now)

15.times do
Game.create!(:title=> 'Beyond Good and Evil', :description=> 'Amazing', :user=> new_admin, :user_id=> new_admin.id)
end

8.times do
Game.create!(:title=> 'My Little Pony', :description=> 'Good', :user=> new_member, :user_id=> new_member.id)
end