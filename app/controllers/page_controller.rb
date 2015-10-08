class PageController < ApplicationController
  def main
    @image = Image.new
  end

  def image_params
    params.require(:image).permit(:photo)
  end
end
