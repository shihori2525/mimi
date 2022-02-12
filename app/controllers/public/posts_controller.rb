class Public::PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    if @post.save
      redirect_to post_path(@post)
    else
      render "new"
    end
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post =  Post.find(params[:id])
  end

  def update
    @post =  Post.find(params[:id])
    if @post.update
      redirect_to post_path(@post)
    else
      render "edit"
    end
  end

  def destroy
    @post =  Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end


  private

  def post_params
    params.require(:post).permit(:member_id,:item_id,:image_id,:title,:rate,:merit,:demerit,:usability,:cost_performance,:pattern,:other)
  end
end
