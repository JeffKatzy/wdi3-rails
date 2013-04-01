class UsersController < ApplicationController

  before_filter :check_if_logged_in, except: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    if @user.save
      redirect_to(@user)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
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
  end

  private
    def check_if_logged_in
      redirect_to root_path if @auth.nil?
    end
end
