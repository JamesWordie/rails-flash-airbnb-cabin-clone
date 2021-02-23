class UsersController < ApplicationController
  before_action :set_user

  def cabins
    @cabins = @user.cabins
  end

  def bookings
    @bookings = @user.bookings
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end
end
