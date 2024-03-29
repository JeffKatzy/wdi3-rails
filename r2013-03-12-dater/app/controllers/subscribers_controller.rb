class SubscribersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      subscriber = Subscriber.create(tagline: "please change tagline", bio: "please change bio", age: 99)
      subscriber.user = @user
    end
  end

  def purchase
    @subscriber.purchase_plan(params[:plan])
  end

  private
  def check_subscriber
    render :nothing => true if @subscriber.nil?
  end
end