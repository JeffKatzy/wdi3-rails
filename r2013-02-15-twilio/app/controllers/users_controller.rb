class UsersController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def show
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

  def txt
    name = params[:first]
    body = params[:body]
    user = User.where(name: name).first
    client = Twilio::REST::Client.new(ENV['TW_SID'], ENV['TW_TOK'])
    client.account.sms.messages.create(:from => '+12158746778', :to => user.phone, :body => body)
    redirect_to(root_path)
  end
end
