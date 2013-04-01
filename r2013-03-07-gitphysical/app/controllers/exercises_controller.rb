class ExercisesController < ApplicationController
  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(params[:exercise])
    @exercises = @auth.exercises.order(:activity)
    if @exercise.save
      respond_to do |format|
        format.html { redirect_to(exercise_path)}
        format.js { render :create}
      end
    else
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def index
    @exercises = @auth.exercises.order(:activity)
  end
end
