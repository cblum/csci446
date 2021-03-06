class Admin::GamesController < Admin::AdminController

  before_filter :load_users, :only => [:new, :create, :edit, :update]

  def index
    #@games = Games.all
	@games = Game.paginate(:page => params[:page], :order => 'created_at DESC')
  end

  def show
    @games = Game.find(params[:id])
  end

  def new
    @games = Game.new
  end

  def create
    @games = Game.new(params[:game])
    if @games.save
      flash[:notice] = "Successfully added #{@games.title}"
      redirect_to admin_root_url
    else
	flash[:error] = "Could not create game"
      render :controller => 'admin', :action => 'new'
    end
  end

  def edit
    @games = Game.find(params[:id])
  end

  def update
    @games = Game.find(params[:id])
    if @games.update_attributes(params[:game])
      flash[:notice] = "Successfully updated #{@games.title}."
      redirect_to admin_root_url
    else
	flash[:error] = "Could not save changes"
      render :action => 'edit'
    end
  end

  def destroy
    @games = Game.find(params[:id])
    @games.destroy
    flash[:notice] = "Successfully destroyed games."
    redirect_to admin_root_url
  end
    
  private

    def load_users
      @users = User.all
	  @selected_user = current_user
    end
end
