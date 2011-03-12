class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Welcome back, #{@user_session.record.firstname} #{@user_session.record.lastname}"
      if @user_session.record.role.name == 'admin'
        redirect_to admin_root_url
      else
	  redirect_to member_root_url
      end
    else
      flash[:error] = "Could not log you in"
      render :action => 'new'
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    flash[:notice] = "Successfully logged out."
    redirect_to root_url
  end
end
