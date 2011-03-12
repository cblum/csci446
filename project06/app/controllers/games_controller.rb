class GamesController < ApplicationController

  #before_filter :load_users, :only => [:new, :edit, :update]

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
    @games = Game.new(params[:games])
    if @games.save
      flash[:notice] = "Successfully created games. Hooray"
      redirect_to @games
    else
      render :action => 'new'
    end
  end

  def edit
    @games = Game.find(params[:id])
  end

  def update
    @games = Game.find(params[:id])
    if @games.update_attributes(params[:games])
      flash[:notice] = "Successfully updated games."
      redirect_to @games
    else
      render :action => 'edit'
    end
  end

  def destroy
    @games = Game.find(params[:id])
    @games.destroy
    flash[:notice] = "Successfully destroyed games."
    redirect_to games_url
  end
end
