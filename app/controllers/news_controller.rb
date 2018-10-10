class NewsController < ApplicationController
  require "open-uri"
  def index
    # I tried to interpolate my API key in the commented code below but i couldnt seem to make it work, so i just used the key here.
    # url = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=#{ENV['NEWS_API_KEY']}"
    url = 'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=991b53288eab4a508a0556e8ed1f01e8'
    article_serialized = open(url).read
    @articles = JSON.parse(article_serialized)
  end
end
