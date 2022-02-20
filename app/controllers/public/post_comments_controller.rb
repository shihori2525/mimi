class Public::PostCommentsController < ApplicationController
  before_action :authenticate_member!

  def create
    @post = Post.find(params[:post_id])
    @comment = current_member.post_comments.new(post_comment_params)
    @comment.post_id = @post.id
    if @comment.save
      render :post_comments
    else
      render 'posts/show'
    end
  end

  def destroy
    PostComment.find_by(id: params[:id], post_id: params[:post_id]).destroy

    #renderしたときに@postのデータがないため記述
    @post = Post.find(params[:post_id])
    render :post_comments
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end

end
