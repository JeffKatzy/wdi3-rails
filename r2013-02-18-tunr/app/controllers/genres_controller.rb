class GenresController < ApplicationController
  layout 'homepage'
  before_filter :check_if_admin, :only => [:new, :create, :edit, :update]

  def create
    @genre = Genre.new(params[:genre])
    if @genre.save
      redirect_to(genres_path)
    else
      render :new
    end
  end

  def new
    @genre = Genre.new
  end

  def edit
    @genre = Genre.find(params[:id])
    render :new
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update_attributes(params[:genre])
      redirect_to(genres_path)
    else
      render :new
    end
  end

  def show
  end

  def index
    @genres = Genre.order(:name)
  end
end
