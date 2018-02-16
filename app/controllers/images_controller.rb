class ImagesController < ApplicationController
  def index
    @images = Image.first
  end
end
