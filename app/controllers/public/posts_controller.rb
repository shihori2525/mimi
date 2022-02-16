class Public::PostsController < ApplicationController
  before_action :authenticate_member!

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.member_id = current_member.id
    if @post.save
      redirect_to post_path(@post)
    else
      @member = current_member
      render "new"
    end
  end

  def index
    @posts = Post.all

    #タグの絞り込み
    if params[:tag_name]
      @posts = Post.tagged_with("#{params[:tag_name]}")
    end
  end

  #ソート機能
  def sort
    selection = params[:keyword]
    @posts = Post.sort(selection)
  end

  def show
    @post = Post.find(params[:id])
    @post_comment = PostComment.new
  end

  def edit
    @post =  Post.find(params[:id])
  end

  def update
    @post =  Post.find(params[:id])
    if @post.update(post_params)
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
    params.require(:post).permit(:member_id,:item_id,:brand_id,:image,:title,:rate,:merit,:demerit,:usability,:cost_performance,:pattern,:other,:tag_list)
  end
end
