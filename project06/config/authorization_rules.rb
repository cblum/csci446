authorization do
  role :admin do
    has_permission_on [:articles, :comments], :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end
  
  role :guest
    has_permission_on :articles, :to => [:index, :show]
  
  role :author do
    includes :guest
    has_permission_on :comments, :to => [:edit, :update] do
      if_attribute :user => is { user }
	end  
  end
end