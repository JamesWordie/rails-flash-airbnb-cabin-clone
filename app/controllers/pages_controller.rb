class PagesController < ApplicationController
  def home
    @cabins = Cabin.all
  end
end
