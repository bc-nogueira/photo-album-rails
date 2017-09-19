class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :destroy]

  def index
    @photos = Photo.all
  end

  def show; end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_attributes)
    if @photo.save
      flash.now[:notice] = 'A foto foi salva com sucesso!'
      redirect_to photos_path
    else
      flash.now[:danger] = 'Erro ao salvar foto.'
      render action: 'new'
    end
  end

  def destroy
    @photo.destroy
    redirect_to photos_path
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_attributes
    params.require(:photo).permit(:title, :date, :location, :photo)
  end
end
