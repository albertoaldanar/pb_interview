class ImagesController < ApplicationController
  def index
    @image = Image.new(require_params)
    @all_images = Image.all
  end

  def create
    @image = Image.new(require_params)
    if @image.save
      redirect_to root_path
    end
  end

  private
  def require_params
    # params.require(:image).permit(:photo_file_name, :photo_content_type, :photo_file_size, :url, :title)
    params.permit(:photo)
  end
end
