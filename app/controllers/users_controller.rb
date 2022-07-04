class UsersController < ApplicationController
  #  should use devise controller instead :cry
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

end


