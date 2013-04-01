require 'open-uri'
class StoriesController < ApplicationController
  def index
  end

  def create
    doc = Nokogiri::HTML(open('https://news.ycombinator.com/'))
    titles = doc.css('.title > a')
    article_titles = titles.map {|i| i.text }
    urls = titles.map {|i| i.get_attribute('href') }
    titles_and_urls = article_titles.zip urls
    titles_and_urls.each do |pair|
      Article.create(name: pair[0], url: pair[1])
    end
  end
end