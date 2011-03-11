class User < ActiveRecord::Base
  acts_as_authentic

  has_many :games
  
  validates_length_of :username, :minimum => 6
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :email
  validates_length_of :password, :minimum => 6

  has_attached_file :photo,
         :url => '/assets/:class/:attachment/:id/:style/:filename',
	     :styles => {:thumb=> "100x100#"}
  
  cattr_reader :per_page
  @@per_page = 20

  def role_symbols
    if admin
	[:admin] 
    else
	[:member]
    end
  end

  def to_s
    firstname+" "+lastname
  end

end
