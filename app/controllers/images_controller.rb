class ImagesController < ApplicationController

  def image_params
    params.require(:image).permit(:photo)
  end

end
