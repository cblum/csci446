class User < ActiveRecord::Base
  acts_as_authentic

  has_many :games
  
  def role_symbols
    [:admin] if admin?
  end

end
