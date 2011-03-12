class Member::UsersController < Member::MemberController
  # GET /users
  # GET /users.xml
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
  end

  # GET /users/new
  # GET /users/new.xml
  def new
  end

  # GET /users/1/edit
  def edit
    @user = current_user
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to(member_root_url, :notice => 'Registration successful.') }
        format.xml  { render :xml => @user, :status => :created, :location => member_root_url }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = current_user

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(member_root_url, :notice => 'Successfully updated profile') }
        format.xml  { head :ok, :location => member_root_url }
      else
	  flash[:error] = "Could not save profile"
        format.html { render :controller => 'member', :action => "edit" }
        format.xml  { render :xml => edit_member_user_path(@user).errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
end
