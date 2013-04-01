class SessionController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.where(:email => params[:email]).first
    @subscriptions = Subscription.all
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
    else
      session[:user_id] = nil
    end
    authenticate
  end

  def destroy
    session[:user_id] = nil
    authenticate
  end
end