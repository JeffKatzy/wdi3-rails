class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      respond_to do |format|
        format.html { redirect_to(user_path) }
        format.js { render :create }
      end
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
