class BuysController < ApplicationController
  def show
    @item = Item.find_by(id: params[:item_id])
    @user = if current_user
              current_user
            else
              Struct.new(Guest, :first_name, :last_name)
              Guest.new('Guest', '')
            end
  end
end
