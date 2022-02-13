class Public::RelationshipsController < ApplicationController
  def create
    following = current_member.relationships.build(follower_id: params[:member_id])
    following.save
    redirect_to request.referrer || root_path
  end

  def destroy
    following = current_member.relationships.find_by(follower_id: params[:member_id])
    following.destroy
    redirect_to request.referrer || root_path
  end
end
