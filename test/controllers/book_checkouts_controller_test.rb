require 'test_helper'

class BookCheckoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_checkout = book_checkouts(:one)
  end

  test "should get index" do
    get book_checkouts_url
    assert_response :success
  end

  test "should get new" do
    get new_book_checkout_url
    assert_response :success
  end

  test "should create book_checkout" do
    assert_difference('BookCheckout.count') do
      post book_checkouts_url, params: { book_checkout: { index: @book_checkout.index } }
    end

    assert_redirected_to book_checkout_url(BookCheckout.last)
  end

  test "should show book_checkout" do
    get book_checkout_url(@book_checkout)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_checkout_url(@book_checkout)
    assert_response :success
  end

  test "should update book_checkout" do
    patch book_checkout_url(@book_checkout), params: { book_checkout: { index: @book_checkout.index } }
    assert_redirected_to book_checkout_url(@book_checkout)
  end

  test "should destroy book_checkout" do
    assert_difference('BookCheckout.count', -1) do
      delete book_checkout_url(@book_checkout)
    end

    assert_redirected_to book_checkouts_url
  end
end
