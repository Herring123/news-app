class NewsController < ApplicationController
  require "open-uri"
  def index
    # I tried to interpolate my API key in the commented code below but i couldnt seem to make it work, so i just used the key here.
    # url = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=#{ENV['NEWS_API_KEY']}"
    url = 'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey='
    article_serialized = open(url).read
    @articles = JSON.parse(article_serialized)
  end
end
