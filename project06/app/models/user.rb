class User < ActiveRecord::Base
  acts_as_authentic
  
  def role_symbols
    [:admin] if admin?
  end

end
