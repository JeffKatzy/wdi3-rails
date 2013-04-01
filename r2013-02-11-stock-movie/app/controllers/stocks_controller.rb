class StocksController < ApplicationController
  def new
  end

  def show
    if params[:ticker].present?
      @ticker = params[:ticker].upcase
      @price = YahooFinance::get_quotes(YahooFinance::StandardQuote, @ticker)[@ticker].lastTrade
    end
  end
end