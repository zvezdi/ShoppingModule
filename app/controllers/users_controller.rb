class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render :log_in
    else
      render :new
    end
  end

  def show
    render :log_in
  end

  private

  def user_params
    params.require(:user)
          .permit(:first_name, :last_name,
                  :email, :password, :password_confirmation,
                  :address, :phone_number)
  end
end
