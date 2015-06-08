class WelcomeController < ApplicationController
  def index
    @photos = Image.all
  end

end
