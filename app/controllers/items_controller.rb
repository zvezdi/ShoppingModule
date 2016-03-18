class ItemsController < ApplicationController
  def index
    @items = Item.all
    if !current_user.nil?
      render :index, layout: 'user'
    else
      render :index
    end
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to item_path(@item.id)
    else
      flash[:bad_input] = "Wrong input."
      redirect_to new_item_path
    end
  end

  def show
    @item = Item.find(params[:id])
    if !current_user.nil?
      render :show, layout: 'user'
    else
      render :show
    end
  end

  def edit
    #only admin
  end

  def update
    #only admin
  end

  def destroy
    #only admin
  end

  private

  def item_params
    params.require(:item)
          .permit(:name, :description,
                  :price, :quantity)
  end
end
