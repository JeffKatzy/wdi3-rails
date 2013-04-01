class MoviesController < ApplicationController
  def new
  end

  def show
    convert = params[:movie].split.join("+")
    movie_data = HTTParty.get("http://www.omdbapi.com/?t=#{convert}")
    @data = JSON(movie_data.body)
    @title = @data['Title']
    @year = @data['Year']
    @rated = @data['Rated']
    @released = @data['Released']
    @runtime = @data['Runtime']
    @genre = @data['Genre']
    @director = @data['Director']
    @writer = @data['Writer']
    @actors = @data['Actors']
    @plot = @data['Plot']
    @poster = @data['Poster']
    @rating = @data['imdbRating']
    @imdbVotes = @data['imdbVotes']
    @imdb = @data['imdbID']
  end
end