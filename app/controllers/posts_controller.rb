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
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if  @post.update(post_params)
      redirect_to post_path(@post)
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if  @post.destroy
      redirect_to my_page_path
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :image, :user_id)
  end

end
