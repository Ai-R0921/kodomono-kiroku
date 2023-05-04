class UsersController < ApplicationController
  def my_page
    @posts = Post.order('id DESC').limit(1)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to my_page_path
    end
  end

  def unsubscribe
  end

  def withdraw
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :email, :is_deleted)
  end
end
