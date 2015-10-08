class ImagesController < ApplicationController

  def create
    @image = Image.new params.require(:image).permit(:photo)
    if @image.save
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def image_params
    params.require(:image).permit(:photo)
  end

end
