class PhotosController < ApplicationController

  before_action do
    @photos = Photo.all.order('created_at desc').page(params[:page])
  end

  def index
  end

  def new
    unless current_user == nil
      @photo = Photo.new
    else
      redirect_to root_path, alert: 'Please login first.'
    end
  end

  def create
    @photo = Photo.new photo_params
    if @photo.save
      redirect_to root_path, notice: "Success!"
    else
      flash.now[:alert] = 'Fail!'
      render :new
    end
  end

  private

    def photo_params
      params.require(:photo).permit(:name)
    end

end
