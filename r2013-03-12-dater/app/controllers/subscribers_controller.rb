class SubscribersController < ApplicationController
  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(params[:subscriber])
    if @subscriber.save
      flash[:success] = "You have successfully created an account!"
    else
      render 'index'
    end
  end
end