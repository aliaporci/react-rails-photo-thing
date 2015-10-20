class Api::ImagesController < ApplicationController

  before_action do
    request.format = :json
  end

  def index
    @images = Image.all
  end

end
