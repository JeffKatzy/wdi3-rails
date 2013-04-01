class HomeController < ApplicationController
  def start
  end

  def submit
    case params['choice']
      when '1' then redirect_to '/first'
      when '2' then render 'second'
      when '3' then render 'third'
      when 'a' then render 'page_a'
      when 'b' then render 'page_b'
    end
  end

  def page_a
  end

  def page_b
  end
end