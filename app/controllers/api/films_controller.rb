class Api::FilmsController < ApplicationController
  def index
   @films = HTTP.get("https://api.themoviedb.org/3/movie/550?api_key=#{Rails.application.credentials.films_api[:api_key]}").parse
    render 'index.json.jb'
  end  
end



