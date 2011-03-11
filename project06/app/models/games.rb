class Games < ActiveRecord::Base
  attr_accessible :title, :description, :user_id

  cattr_reader :per_page
  @@per_page = 10

  belongs_to :user
end
