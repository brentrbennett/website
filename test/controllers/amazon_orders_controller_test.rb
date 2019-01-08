require 'test_helper'

class AmazonOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amazon_order = amazon_orders(:one)
  end

  test "should get index" do
    get amazon_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_amazon_order_url
    assert_response :success
  end

  test "should create amazon_order" do
    assert_difference('AmazonOrder.count') do
      post amazon_orders_url, params: { amazon_order: { amount: @amazon_order.amount, date: @amazon_order.date, desc: @amazon_order.desc, double: @amazon_order.double, number: @amazon_order.number, property: @amazon_order.property } }
    end

    assert_redirected_to amazon_order_url(AmazonOrder.last)
  end

  test "should show amazon_order" do
    get amazon_order_url(@amazon_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_amazon_order_url(@amazon_order)
    assert_response :success
  end

  test "should update amazon_order" do
    patch amazon_order_url(@amazon_order), params: { amazon_order: { amount: @amazon_order.amount, date: @amazon_order.date, desc: @amazon_order.desc, double: @amazon_order.double, number: @amazon_order.number, property: @amazon_order.property } }
    assert_redirected_to amazon_order_url(@amazon_order)
  end

  test "should destroy amazon_order" do
    assert_difference('AmazonOrder.count', -1) do
      delete amazon_order_url(@amazon_order)
    end

    assert_redirected_to amazon_orders_url
  end
end
