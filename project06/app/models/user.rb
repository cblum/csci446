class User < ActiveRecord::Base
  acts_as_authentic
  
  attr_accessor :role
  belongs_to :role

  has_many :games

  validates_length_of :username, :minimum => 6
  validates_presence_of :firstname
  validates_presence_of :lastname
  validates_presence_of :email
  validates_length_of :password, :minimum => 6, :on => :create

  has_attached_file :photo,
         :url => '/assets/:class/:attachment/:id/:style/:filename',
	     :styles => {:thumb=> "100x100#"}
  
  cattr_reader :per_page
  @@per_page = 20

  def role_symbols
    [role.name.to_sym]
  end

  def to_s
    firstname+" "+lastname
  end

  def num_games
    games.count
  end

end
