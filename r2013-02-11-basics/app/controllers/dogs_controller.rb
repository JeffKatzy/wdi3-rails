class DogsController < ApplicationController
  def new
    redirect_to('/dogs')
  end

  def create
  end

  def index
  end

  def show
  end

  def edit
  end

  def delete
  end

  def faq
    render 'home/faq'
  end

  def faq2
    render 'faq'
  end
end