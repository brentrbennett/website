class AdminController < ApplicationController
  layout 'index', only: [:admin]
  def index
  end
  def cash_return
    @table = DailyRates
  end
end
