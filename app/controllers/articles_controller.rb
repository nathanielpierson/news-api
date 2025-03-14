class ArticlesController < ApplicationController
  require "http"
def index
response = HTTP.get("https://newsapi.org/v2/everything?q=orange&from=2025-03-14&sortBy=popularity&apiKey=843c4b7d77c94765bf9e67f7ee81a84d)")
render json: response.parse["articles"]
end
end
