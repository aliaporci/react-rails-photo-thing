class PageController < ApplicationController
  def main
    @images = Image.all
  end
end
