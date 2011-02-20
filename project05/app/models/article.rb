class Article < ActiveRecord::Base
  validates_presence_of :title, :author, :body
  validates_exclusion_of :author, :in => %w( Sally ), :message => "name Sally is not authorized"

end
