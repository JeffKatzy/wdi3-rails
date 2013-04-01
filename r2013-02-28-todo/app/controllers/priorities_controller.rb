class PrioritiesController < ApplicationController
  def new
  end

  def create
    priority = Priority.create(name: params[:name], color: params[:color], value: params[:value])
    @auth.priorities << priority
    render :json => priority
  end

  def show
  end

  def index
    @priorities = @auth.priorities
  end

  def edit
  end

  def update
    color = params[:color]
    name = params[:name]
    value = params[:value]

    @priority = Priority.find(params[:id])
    priority.color = color
    priority.name = name
    priority.value = value
    priority.save
  end

  def destroy
  end
end
