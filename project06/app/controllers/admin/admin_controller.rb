class Admin::AdminController < ApplicationController
  before_filter :require_user
  
  filter_access_to :all
  
  def index
	@games = Game.paginate(:page => params[:page], :order => 'created_at DESC')
	@num_games = Game.count
  
  end
  
  protected
  
    def permission_denied
	  flash[:error] = "You do not have access to #{request.path}."
	  respond_to do |format|
	    format.html {redirect_to member_root_url}
		format.xml {head :unauthorized}
		format.js { head :unauthorized }
	  end
	end

end