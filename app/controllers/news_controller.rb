class NewsController < ApplicationController
  def index
    url = 'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=991b53288eab4a508a0556e8ed1f01e8'
    article_serialized = open(url).read
    @articles = JSON.parse(article_serialized)
  end
end
