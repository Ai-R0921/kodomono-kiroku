class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @user = current_user
    post = Post.new(post_params)
    post.user_id = current_user.id
    post.save
    redirect_to users_my_page_path
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :image, :user_id)
  end

end
