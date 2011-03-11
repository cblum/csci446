class Admin::GamesController < Admin::AdminController

  before_filter :load_users, :only => [:new, :edit, :update]

  def index
    #@games = Games.all
	@games = Games.paginate(:page => params[:page], :order => 'created_at DESC')
  end

  def show
    @games = Games.find(params[:id])
  end

  def new
    @games = Games.new
  end

  def create
    @games = Games.new(params[:games])
    if @games.save
      flash[:notice] = "Successfully created games. Yay"
      redirect_to admin_root_url
    else
      render :action => 'new'
    end
  end

  def edit
    @games = Games.find(params[:id])
  end

  def update
    @games = Games.find(params[:id])
    if @games.update_attributes(params[:games])
      flash[:notice] = "Successfully updated games."
      redirect_to admin_root_url
    else
      render :action => 'edit'
    end
  end

  def destroy
    @games = Games.find(params[:id])
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
