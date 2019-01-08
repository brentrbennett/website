class AdminController < ApplicationController
  layout 'index', only: [:admin]
  def index
  end

  def cash_return
    @props = Property.joins(:expenses).all
    @expenses = Expense.all
  end

  def amazon_orders
    @table = AmazonOrder.all.sort_by { |a|a[:date]  }
    @list = Array.new
    @table.each do |f|
      if !@list.include?(f[:property])
        @list.push(f[:property])
      end
    end
  end

  def daily_rates
    param1 = params[:param1]
    @properties = Property.all
    if param1 == 'default'
      @daily = nil
    else
      @properties.each do |f|
        if f[:property_address] == param1
          param1 = f[:property_id]
          @current_property = f
        end
      end
      @daily = Daily_Rate.where(:properties_id == param1)
    end
  end

  def add_amazon_order

  end

  def properties
    param1 = params[:param1]
    @flag = false
    if param1 = 'all'
      @properties = Property.all.sort_by { |a|a[:property_address]  }
    else
      @flag = true

    end
  end

  def spiaggia_report

  end
end
