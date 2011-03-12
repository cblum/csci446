class Admin::RolesController < Admin::AdminController

  before_filter :load_users, :only => [:new, :create, :edit, :update]

  def index
	@role = Role.all
  end

  def show
  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new(params[:role])
    if @role.save
      flash[:notice] = "Successfully created role"
      redirect_to admin_root_url
    else
      render :controller => 'admin', :action => 'new'
    end
  end

  def edit
    @role = Role.find(params[:id])
  end

  def update
    @role = Role.find(params[:id])
    if @role.update_attributes(params[:role])
      flash[:notice] = "Successfully updated role."
      redirect_to admin_root_url
    else
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
