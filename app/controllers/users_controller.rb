class UsersController < ApplicationController
  before_action :find_user, only: %i[show update destroy edit]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit; end

  def show; end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone, :address)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
