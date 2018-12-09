class HomeController < ApplicationController
  def index
    User.all
  end
end
