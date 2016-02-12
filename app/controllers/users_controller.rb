class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(:email => user_params[:email],
                     :password => user_params[:password])

    respond_to do |format|
      if @user.save
        format.html {
          session[:user_id] = @user.id
          @profile = Profile.new(:user_id => @user.id,
                                 :name => params[:name],
                                 :subscription_id => params[:subscription_id])
          if @profile.save
            @estado= "profile saved"
          else
              @profile = Profile.new(:id_user => @user.id, :name => "" )
              @profile.save
          end

          @group_component = GroupComponent.new(:user_id => @user.id,
                                                :name => "Default",
                                                :description => "this is a group component default for free account",
                                                :enable => 1)
          @group_component.save
          redirect_to root_url, notice: 'Profile was successfully created.'
        }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :name, :subscription_id)
    end
end
