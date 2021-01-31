require 'test_helper'

class PeoductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peoduct = peoducts(:one)
  end

  test "should get index" do
    get peoducts_url
    assert_response :success
  end

  test "should get new" do
    get new_peoduct_url
    assert_response :success
  end

  test "should create peoduct" do
    assert_difference('Peoduct.count') do
      post peoducts_url, params: { peoduct: { name: @peoduct.name, price: @peoduct.price, vendor: @peoduct.vendor } }
    end

    assert_redirected_to peoduct_url(Peoduct.last)
  end

  test "should show peoduct" do
    get peoduct_url(@peoduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_peoduct_url(@peoduct)
    assert_response :success
  end

  test "should update peoduct" do
    patch peoduct_url(@peoduct), params: { peoduct: { name: @peoduct.name, price: @peoduct.price, vendor: @peoduct.vendor } }
    assert_redirected_to peoduct_url(@peoduct)
  end

  test "should destroy peoduct" do
    assert_difference('Peoduct.count', -1) do
      delete peoduct_url(@peoduct)
    end

    assert_redirected_to peoducts_url
  end
end
