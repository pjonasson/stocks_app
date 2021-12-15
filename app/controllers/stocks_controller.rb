class StocksController < ApplicationController
  def index
    stocks = Stock.all
    render json: stocks
  end

  def show
    stocks = []
    nasdaq = Stock.all
    nasdaq.each do |stock|
      if stock.name.downcase.include?(params[:name])
        stocks << stock
      end
    end
    render json: stocks
  end
end
