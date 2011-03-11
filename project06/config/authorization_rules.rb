authorization do
  role :admin do
    includes :member
    has_permission_on :admin_admin, :to => [:index, :show, :new, :create, :edit, :update, :destroy]
	has_permission_on :admin_users, :to => [:index, :show, :new, :create, :edit, :update, :destroy]
	has_permission_on :admin_games, :to => [:index, :show, :new, :create, :edit, :update, :destroy]
  end
  
  role :guest do
    has_permission_on :games, :to => [:index, :show]
  end
  
  role :member do
    includes :guest
    has_permission_on :member_member, :to => [:index]
    has_permission_on :member_games, :to => [:edit, :update] do
      if_attribute :user => is { user }
	has_permission_on :member_users, :to => [:edit, :update]
	end  
  end
end