class Api::FilmsController < ApplicationController
  def index
    @films = faraday_response
    render json: faraday_response.body
  end 

  def faraday_response
    Faraday.get("https://api.themoviedb.org/3/movie/550?api_key=#{api_key}")
  end 

  def api_key
    Rails.application.credentials.films_api[:api_key]
  end
end




