class PhotosController < ApplicationController

  before_action do
    @photos = Photo.all.order('created_at desc').page(params[:page])
    authenticate_user
  end

  def index
  end

  def new
    @photo = Photo.new
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
