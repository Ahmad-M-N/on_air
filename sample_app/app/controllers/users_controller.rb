class UsersController < ApplicationController
  before_action :enforce_log_in, only: [:edit, :update, :index, :destroy]
  before_action :authorize_edit, only: [:edit, :update]
  before_action :authorize_admin_access, only: :destroy


  def index
    filtered_users = current_user.admin? ? User.all : User.where(activated: true)
    @users = filtered_users.paginate(page: params[:page])
  end

  def new
    @user= User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.account_activation(@user).deliver_now
      flash[:info] = "Please check your email to activate your account"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "Profile updated successfully!"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  
  private
    
    def enforce_log_in
      if !logged_in?
        store_intended_location
        flash[:danger] = "Please login first"
        redirect_to login_url
      end
    end

    def authorize_edit
      if !current_user?(User.find(params[:id]))
        redirect_to edit_user_url(current_user.id)
      end
    end

    def authorize_admin_access
      redirect_to(root_url) unless current_user.admin?
    end

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  
end