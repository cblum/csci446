class Games < ActiveRecord::Base
  attr_accessible :title, :description, :author_id

  belongs_to :user
end
