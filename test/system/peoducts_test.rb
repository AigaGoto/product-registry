require "application_system_test_case"

class PeoductsTest < ApplicationSystemTestCase
  setup do
    @peoduct = peoducts(:one)
  end

  test "visiting the index" do
    visit peoducts_url
    assert_selector "h1", text: "Peoducts"
  end

  test "creating a Peoduct" do
    visit peoducts_url
    click_on "New Peoduct"

    fill_in "Name", with: @peoduct.name
    fill_in "Price", with: @peoduct.price
    fill_in "Vendor", with: @peoduct.vendor
    click_on "Create Peoduct"

    assert_text "Peoduct was successfully created"
    click_on "Back"
  end

  test "updating a Peoduct" do
    visit peoducts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @peoduct.name
    fill_in "Price", with: @peoduct.price
    fill_in "Vendor", with: @peoduct.vendor
    click_on "Update Peoduct"

    assert_text "Peoduct was successfully updated"
    click_on "Back"
  end

  test "destroying a Peoduct" do
    visit peoducts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Peoduct was successfully destroyed"
  end
end
