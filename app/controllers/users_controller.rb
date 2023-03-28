class UsersController < ApplicationController
  def my_page
    @posts = Post.order('id DESC').limit(1)
  end

  def edit
  end

  def update
  end

  def unsubscribe
  end

  def withdraw
  end
end
