class Game < ActiveRecord::Base
  attr_accessible :title, :description, :user_id
  validates_presence_of :title

  cattr_reader :per_page
  @@per_page = 10

  belongs_to :user
end
