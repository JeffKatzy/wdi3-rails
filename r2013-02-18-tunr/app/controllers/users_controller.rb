class UsersController < ApplicationController
  layout 'homepage'
  before_filter :check_if_logged_in, except: [:new, :create]
  before_filter :check_if_admin, only: [:index, :destroy]

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to(@user)
    else
      render :new
    end
  end

  def new
    @user = User.new
  end

  def show
  end

  def index
    @users = User.all
  end

  def edit
    @user = @auth
    render :new
  end

  def update
    @user = @auth
    if @user.update_attributes(params[:user])
      redirect_to(root_path)
    else
      render :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete
    redirect_to users_path
  end

private
  def check_if_logged_in
    redirect_to root_path if @auth.nil?
  end
end
