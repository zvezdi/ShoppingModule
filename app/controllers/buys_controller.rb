class BuysController < ApplicationController
  def show
    @item = Item.find_by(id: params[:item_id])
    if !current_user.nil?
      @user = current_user
      render :show, layout: 'user'
    else
      redirect_to 'sessions#login'
    end
  end
end
