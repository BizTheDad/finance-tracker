class FriendshipsController < ApplicationController

  def create
    current_user.friendships.build(friend_id: params[:friend])
    if current_user.save
      flash[:notice] = "Now following friend"
    else
      flash[:alert] = "Prolem occurred with tracking request"
    end
    redirect_to my_friends_path
  end

  def destroy
    friendship = current_user.friendships.where(friend_id: params[:id]).first
    friendship.destroy
    flash[:notice] = "No longer following"
    redirect_to my_friends_path
  end

end
