require "application_system_test_case"

class RealEstatesTest < ApplicationSystemTestCase
  setup do
    @real_estate = real_estates(:one)
  end

  test "visiting the index" do
    visit real_estates_url
    assert_selector "h1", text: "Real Estates"
  end

  test "creating a Real estate" do
    visit real_estates_url
    click_on "New Real Estate"

    click_on "Create Real estate"

    assert_text "Real estate was successfully created"
    click_on "Back"
  end

  test "updating a Real estate" do
    visit real_estates_url
    click_on "Edit", match: :first

    click_on "Update Real estate"

    assert_text "Real estate was successfully updated"
    click_on "Back"
  end

  test "destroying a Real estate" do
    visit real_estates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Real estate was successfully destroyed"
  end
end
