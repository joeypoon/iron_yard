class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:password])
      login user
      redirect_to new_photo_path
    else
      flash.now[:alert] = '👽'
      render :new
    end
  end

  def delete
    session.delete :name
    redirect_to root_path
  end

end
