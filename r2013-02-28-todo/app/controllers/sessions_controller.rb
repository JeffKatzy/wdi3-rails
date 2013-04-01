class SessionsController < ApplicationController
  def new
  end

  def create
    # raise params.inspect
    user = User.where(:name => params[:name]).first
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user
      flash[:notice] = 'logged in!'

    else
      flash[:notice] = 'Incorrect login, try again.'
      redirect_to(login_path)
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to(root_path)
  end

  def update
    binding.pry
  end
end
