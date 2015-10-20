class PageController < ApplicationController
  def main
    @images = Image.all
    @image = Image.new
  end

end
