class GamesController < ApplicationController
  def index
    @games = Games.all
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
      flash[:notice] = "Successfully created games."
      redirect_to @games
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
      redirect_to @games
    else
      render :action => 'edit'
    end
  end

  def destroy
    @games = Games.find(params[:id])
    @games.destroy
    flash[:notice] = "Successfully destroyed games."
    redirect_to games_url
  end
end
