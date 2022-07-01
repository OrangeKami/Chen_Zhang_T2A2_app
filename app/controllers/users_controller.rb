class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
     @user = User.find_by_id(params[:id])
    end

    
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    if @user.destroy
        redirect_to users_path, notice: "User deleted."
    end
  end







    

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :email, :password, :avatar, :password_confirmation, :admin)
    end
end


