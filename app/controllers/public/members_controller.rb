class Public::MembersController < ApplicationController
  before_action :correct_member, only: [:edit, :update]

  def show
    @member = Member.find(params[:id])
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to member_path(@member),notice:'プロフィールを更新しました'
    else
      render "edit"
    end
  end

  def followings
    member = Member.find(params[:id])
    @members = member.followings
  end

  def followers
    member = Member.find(params[:id])
    @members = member.followers
  end

  def post_favorites
    @member = Member.find(params[:id])
    post_favorites = PostFavorite.where(member_id: @member.id).pluck(:post_id)
    @favorite_posts = Post.find(post_favorites)
  end

  def item_favorites
    @member = Member.find(params[:id])
    item_favorites = ItemFavorite.where(member_id: @member.id).pluck(:item_id)
    @favorite_items = Item.find(item_favorites)
  end


  private

  def member_params
    params.require(:member).permit(:name,:email,:encrypted_password,:introduction,:profile_image)
  end

  def correct_member
  @member = Member.find(params[:id])
  redirect_to member_path(current_member.id) unless @member == current_member
  end
end
