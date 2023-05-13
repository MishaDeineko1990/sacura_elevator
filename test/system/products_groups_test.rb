require "application_system_test_case"

class ProductsGroupsTest < ApplicationSystemTestCase
  setup do
    @products_group = products_groups(:one)
  end

  test "visiting the index" do
    visit products_groups_url
    assert_selector "h1", text: "Products Groups"
  end

  test "creating a Products group" do
    visit products_groups_url
    click_on "New Products Group"

    fill_in "Name", with: @products_group.name
    fill_in "Number group", with: @products_group.number_group
    click_on "Create Products group"

    assert_text "Products group was successfully created"
    click_on "Back"
  end

  test "updating a Products group" do
    visit products_groups_url
    click_on "Edit", match: :first

    fill_in "Name", with: @products_group.name
    fill_in "Number group", with: @products_group.number_group
    click_on "Update Products group"

    assert_text "Products group was successfully updated"
    click_on "Back"
  end

  test "destroying a Products group" do
    visit products_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Products group was successfully destroyed"
  end
end
