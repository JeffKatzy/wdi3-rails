class Declaration < ActiveRecord::Base
  attr_accessible :url
  has_many :words

  after_save :get_data

  private

  def get_data
    self.words = HTTParty.get(self.url).split.each_with_index.map{ |w| Word.new(value: w, index: i)}
  end
end