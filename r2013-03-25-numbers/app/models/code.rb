require 'httparty'

class Code < ActiveRecord::Base
  before_save :nuke_data
  after_save :get_data

  def nuke_data
    Character.delete_all
    Code.delete_al
  end

  def get_data
    html = HTTParty.get(self.url)
    doc = Nokogiri::HTML(html)

    td_hex = doc.xpath('//body/table[2]/tr[5]/td/table[2]/tr/td[3]')
    td_sym = doc.xpath('//body/table[2]/tr[5]/td/')

    td_hex.shift
    td_sym.shift
    end
  end
end