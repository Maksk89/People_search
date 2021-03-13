require "application_system_test_case"

class LossPlacesTest < ApplicationSystemTestCase
  setup do
    @loss_place = loss_places(:one)
  end

  test "visiting the index" do
    visit loss_places_url
    assert_selector "h1", text: "Loss Places"
  end

  test "creating a Loss place" do
    visit loss_places_url
    click_on "New Loss Place"

    fill_in "Latitude", with: @loss_place.latitude
    fill_in "Longitude", with: @loss_place.longitude
    click_on "Create Loss place"

    assert_text "Loss place was successfully created"
    click_on "Back"
  end

  test "updating a Loss place" do
    visit loss_places_url
    click_on "Edit", match: :first

    fill_in "Latitude", with: @loss_place.latitude
    fill_in "Longitude", with: @loss_place.longitude
    click_on "Update Loss place"

    assert_text "Loss place was successfully updated"
    click_on "Back"
  end

  test "destroying a Loss place" do
    visit loss_places_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Loss place was successfully destroyed"
  end
end
