class Api::FilmsController < ApplicationController
  before_action :movie_api, only: [:index, :show]

  def index
    render json: @movie_api.search(params.require(:movietitle))
  end 
  
  def show
    render json: @movie_api.details(params.require(:movie_id))
  end

  private

  def movie_api
    @movie_api = MovieDatabaseApi.new
  end
end

