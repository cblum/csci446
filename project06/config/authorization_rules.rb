authorization do
  role :admin do
    has_permission_on [:games, :users], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end
  
  role :guest
    has_permission_on :articles, :to => [:index, :show]
  
  role :author do
    includes :guest
    has_permission_on :games, :to => [:edit, :update] do
      if_attribute :user => is { user }
	has_permission_on :users, :to => [:edit, :update] do
	  if_attribute "SOMETIME FIX THIS"
	end  
  end
end