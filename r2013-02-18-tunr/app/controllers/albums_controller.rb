class AlbumsController < ApplicationController
 layout 'homepage'
  #before_filter :check_if_admin, :only => [:new, :create, :edit, :update]

  def create
    @album = Album.new(params[:album])
    if @album.save
      redirect_to(albums_path)
    else
      render :new
    end
  end

  def new
    @album = Album.new
  end

  def edit
    @album = Album.find(params[:id])
    render :new
  end

  def update
    @album.update_attributes(params[:id])
    if @album.update_attributes(params[:album])
      redirect_to(albums_path)
    else
      render :new
    end
  end

  def show
    @album = Album.find(params[:id])
  end

  def index
    @albums = Album.order(:name)
  end
end
