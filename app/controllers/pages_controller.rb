class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @cabins = Cabin.all
  end

  def profile
  end
end
