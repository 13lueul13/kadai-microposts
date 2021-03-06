class LikesController < ApplicationController
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.fav(micropost)
    flash[:success] = 'お気に入りに追加しました。'
    redirect_back(fallback_location: root_url)
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfav(micropost)
    flash[:success] = 'お気に入りから削除しました。'
    redirect_back(fallback_location: root_url)
  end
end