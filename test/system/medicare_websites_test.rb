require "application_system_test_case"

class MedicareWebsitesTest < ApplicationSystemTestCase
  setup do
    @medicare_website = medicare_websites(:one)
  end

  test "visiting the index" do
    visit medicare_websites_url
    assert_selector "h1", text: "Medicare Websites"
  end

  test "creating a Medicare website" do
    visit medicare_websites_url
    click_on "New Medicare Website"

    click_on "Create Medicare website"

    assert_text "Medicare website was successfully created"
    click_on "Back"
  end

  test "updating a Medicare website" do
    visit medicare_websites_url
    click_on "Edit", match: :first

    click_on "Update Medicare website"

    assert_text "Medicare website was successfully updated"
    click_on "Back"
  end

  test "destroying a Medicare website" do
    visit medicare_websites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medicare website was successfully destroyed"
  end
end
