class Member::GamesController < Member::MemberController

  before_filter :load_users, :only => [:index, :new, :create, :edit, :update]

  def index
    #@games = Games.all
	@games = current_user.games.paginate :page => params[:page], :order => 'created_at DESC'
  end

  def show
  end

  def new
    @games = Game.new
  end

  def create
    @games = Game.new(params[:game])
    @games.user = current_user
    if @games.save
      flash[:notice] = "Successfully added #{@games.title}."
      redirect_to member_root_url
    else
	flash[:error] = "Could not create game"
      render :action => 'new'
    end
  end

  def edit
    @games = Game.find(params[:id])
  end

  def update
    @games = Game.find(params[:id])
    if @games.update_attributes(params[:game])
      flash[:notice] = "Successfully updated #{@games.title}."
      redirect_to member_root_url
    else
	flash[:error] = "Could not save changes"
      render :action => 'edit'
    end
  end

  def destroy
  end

  private

    def load_users
      @users = User.all
	@selected_user = current_user
    end
end
