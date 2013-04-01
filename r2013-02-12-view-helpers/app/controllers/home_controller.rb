class HomeController < ApplicationController
  def home
  end

  def numbers
    @amount = 234
    @large_number = 82829203832373292408
    @phone = 2154997415
  end

  def text
    @numbers = (1..20).to_a
    @person_count1 = 1
    @person_count2 = 2
    @text = "cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
  proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  end

  def assets
  end

  def url
  end
end