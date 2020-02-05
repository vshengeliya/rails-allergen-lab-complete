class UsersController < ApplicationController
 


  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
  end


  def update

  end

  def destroy

  end

  private

    def user_params
      params.require(:user).permit(:name, :age, :experience)
    end
end
