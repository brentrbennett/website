require "application_system_test_case"

class AmazonOrdersTest < ApplicationSystemTestCase
  setup do
    @amazon_order = amazon_orders(:one)
  end

  test "visiting the index" do
    visit amazon_orders_url
    assert_selector "h1", text: "Amazon Orders"
  end

  test "creating a Amazon order" do
    visit amazon_orders_url
    click_on "New Amazon Order"

    fill_in "Amount", with: @amazon_order.amount
    fill_in "Date", with: @amazon_order.date
    fill_in "Desc", with: @amazon_order.desc
    fill_in "Double", with: @amazon_order.double
    fill_in "Number", with: @amazon_order.number
    fill_in "Property", with: @amazon_order.property
    click_on "Create Amazon order"

    assert_text "Amazon order was successfully created"
    click_on "Back"
  end

  test "updating a Amazon order" do
    visit amazon_orders_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @amazon_order.amount
    fill_in "Date", with: @amazon_order.date
    fill_in "Desc", with: @amazon_order.desc
    fill_in "Double", with: @amazon_order.double
    fill_in "Number", with: @amazon_order.number
    fill_in "Property", with: @amazon_order.property
    click_on "Update Amazon order"

    assert_text "Amazon order was successfully updated"
    click_on "Back"
  end

  test "destroying a Amazon order" do
    visit amazon_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Amazon order was successfully destroyed"
  end
end
