class MountainsController < ApplicationController
  def index
    @mountains = Mountain.all
  end

  def new
    @mountain = Mountain.new
  end

  def create
    @mountain = Mountain.create(params[:mountain])
    redirect_to mountains_path
  end

  def show
    @mountain = Mountain.find(params[:id])
  end

  def edit
    @mountain = Mountain.find(params[:id])
  end

  def update
    @mountain = Mountain.find(params[:id])
    @mountain.update_attributes(params[:mountain])
    redirect_to mountains_path
  end

  def destroy
    @mountain = Mountain.find(params[:id])
    @mountain.delete
    redirect_to mountains_path
  end
end