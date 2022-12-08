class MoviesController < ApplicationController
  before_action :set_movies, only: [:show]
  def index
    @movies = Movie.all
  end

  def show
  end

  private
  def set_movies
    @movies = Movie.find(params[:id])
  end
end
