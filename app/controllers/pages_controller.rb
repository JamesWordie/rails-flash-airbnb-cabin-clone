class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @cabins = Cabin.all
    @selected_cabins = @cabins.first(9)
  end

  def profile
  end
end
