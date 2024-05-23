class MarketsController < ApplicationController
  def index
    facade = MarketFacade.new
    @all_markets = facade.get_all_markets
  end

  def show
    market_id = params[:id]
    facade = MarketFacade.new
    @single_market = facade.get_single_market(market_id)
    @single_market_vendors = facade.get_vendors_by_market(market_id)
  end
end