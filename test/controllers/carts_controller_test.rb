require 'test_helper'

class CartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cart = carts(:one)
  end

  test "should get index" do
    get carts_url
    assert_response :success
  end

  test "should get new" do
    get new_cart_url
    assert_response :success
  end

  test "should create cart" do
    assert_difference('Cart.count') do
      post carts_url, params: { cart: { game: @cart.game, user_id: @cart.user_id } }
    end

    assert_redirected_to cart_path(Cart.last)
  end

  test "should show cart" do
    get cart_url(@cart)
    assert_response :success
  end

  test "should get edit" do
    get edit_cart_url(@cart)
    assert_response :success
  end

  test "should update cart" do
    patch cart_url(@cart), params: { cart: { game: @cart.game, user_id: @cart.user_id } }
    assert_redirected_to cart_path(@cart)
  end

  test "should destroy cart" do
    assert_difference('Cart.count', -1) do
      delete cart_url(@cart)
    end

    assert_redirected_to carts_path
  end
end