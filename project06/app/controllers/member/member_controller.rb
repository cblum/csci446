class Member::MemberController < ApplicationController
  before_filter :require_user
  
  filter_access_to :all
  
  def index
    @games = current_user.games.paginate :page => params[:page], :order => 'created_at DESC'
    @total_games = current_user.games.all.count
    @rated_games = current_user.games.all.select { |r| r.description != 'Unrated' }.count
  end
  
  protected
  
    def permission_denied
	  flash[:error] = "You do not have access to #{request.path}."
	  respond_to do |format|
	    format.html {redirect_to root_url}
		format.xml {head :unauthorized}
		format.js { head :unauthorized }
	  end
	end

end