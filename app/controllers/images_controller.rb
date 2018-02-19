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

  def destroy
    @image = Image.find(params[:id])
    if @image.destroy!
      redirect_to root_path
    end
  end

  def update
    @image_edit = Image.find(params[:id])
    if @image_edit.update!(title_params)
      redirect_to root_path
    end
  end

  private
  def require_params
    # params.require(:image).permit(:photo_file_name, :photo_content_type, :photo_file_size, :url, :title)
    params.permit(:photo, :title, :url)
  end

  def title_params
    params.require(:image).permit(:title)
  end
end
