class  MovieDatabaseApi
  BASE_URL = "https://api.themoviedb.org/3"
  
  def search(title)
    response = faraday_client.get("search/movie") do |req| 
      req.params = default_params.merge(
        query: title,
        include_adult: false
      )
    end

    JSON.parse(response.body)["results"]
  end

  def details(movie_id)
    uri = "movie/#{movie_id}"
    response = faraday_client.get(uri) { |req| req.params default_params }
    
    JSON.parse(response.body)
  end

  private

  def api_key
    Rails.application.credentials.films_api[:api_key]
  end

  def default_params
    {
      api_key: api_key,
      language: "en-US",
    }
  end

  def faraday_client
    Faraday.new(BASE_URL)
  end
end

