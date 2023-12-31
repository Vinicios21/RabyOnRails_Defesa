require "application_system_test_case"

class OcurrencesTest < ApplicationSystemTestCase
  setup do
    @ocurrence = ocurrences(:one)
  end

  test "visiting the index" do
    visit ocurrences_url
    assert_selector "h1", text: "Ocurrences"
  end

  test "creating a Ocurrence" do
    visit ocurrences_url
    click_on "New Ocurrence"

    fill_in "Cod", with: @ocurrence.cod
    fill_in "Description", with: @ocurrence.description
    fill_in "Title", with: @ocurrence.title
    click_on "Create Ocurrence"

    assert_text "Ocurrence was successfully created"
    click_on "Back"
  end

  test "updating a Ocurrence" do
    visit ocurrences_url
    click_on "Edit", match: :first

    fill_in "Cod", with: @ocurrence.cod
    fill_in "Description", with: @ocurrence.description
    fill_in "Title", with: @ocurrence.title
    click_on "Update Ocurrence"

    assert_text "Ocurrence was successfully updated"
    click_on "Back"
  end

  test "destroying a Ocurrence" do
    visit ocurrences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ocurrence was successfully destroyed"
  end
end
