class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    redirect_to root_path if @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :date, :area_id, :field, :genre_id, :fish, :tackle, :text,
                                 :image).merge(user_id: current_user.id)
  end
end
