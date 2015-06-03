class PostsController < ApplicationController

  def index
    @posts = Post.published
  end

  def show
    @post = Post.published.find params[:id]
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    @post.published_on = Time.now

    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    @post = Post.find params[:id]

    if @post.update post_params
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

    def post_params
      params.require(:post).permit(:title, :body)
    end

end
