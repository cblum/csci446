# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

Article.delete_all
Author.delete_all

new_author = Author.create!(:name=> 'Johnny on the Spot')
Author.create!(:name=> 'McPopCollar')
Author.create!(:name=> 'Robert Frost')


15.times do
Article.create!(:title => 'Cool Story, Bro', :body => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer consectetur pretium nulla in fringilla. Pellentesque vel lectus rhoncus est convallis aliquam. Aenean at odio sit amet tortor volutpat vulputate in ac mauris. Etiam vestibulum auctor iaculis. Sed scelerisque, arcu luctus congue blandit, erat nisi gravida turpis, et sagittis lorem sapien vitae lacus. Mauris iaculis auctor purus vitae sodales. Sed velit ligula, iaculis sed blandit tempus, condimentum non elit. Praesent sit amet dui eu nibh eleifend viverra sed bibendum risus. Morbi turpis elit, placerat in ornare in, sodales ac enim. Etiam ultricies justo vel velit interdum commodo. Cras molestie vehicula tristique. Vivamus arcu quam, bibendum eget pretium sit amet, venenatis sit amet nisi. Vestibulum porta rhoncus tellus vel aliquam. Integer ut risus mauris, ut eleifend quam.

Cras ut ipsum eget velit faucibus lacinia sit amet ut turpis. Vestibulum malesuada ornare lobortis. Suspendisse eu risus orci. Mauris rhoncus blandit pretium. Phasellus id dui in nulla consectetur porttitor eget ut arcu. Sed id elementum enim. Donec nec est id massa vehicula fringilla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor sodales dictum. In ut justo nibh. Aenean posuere egestas magna. Cras sed enim sit amet justo consectetur pulvinar. Cras vel metus nec lorem laoreet blandit ut id tellus. Donec congue erat ut mauris pretium et facilisis dolor venenatis. Nulla facilisi. Ut velit dui, consectetur quis placerat vitae, mollis sit amet est. Nam et metus sit amet tortor malesuada pharetra. Curabitur in imperdiet felis. Vivamus ultricies, lectus a aliquam feugiat, est odio vulputate augue, eget vulputate neque turpis quis turpis. Nunc id augue nisl.', :author => new_author, :edits => 0)

end