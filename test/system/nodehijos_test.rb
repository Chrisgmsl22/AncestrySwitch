require "application_system_test_case"

class NodehijosTest < ApplicationSystemTestCase
  setup do
    @nodehijo = nodehijos(:one)
  end

  test "visiting the index" do
    visit nodehijos_url
    assert_selector "h1", text: "Nodehijos"
  end

  test "should create nodehijo" do
    visit nodehijos_url
    click_on "New nodehijo"

    fill_in "Description", with: @nodehijo.description
    fill_in "Papa", with: @nodehijo.papa
    fill_in "Title", with: @nodehijo.title
    click_on "Create Nodehijo"

    assert_text "Nodehijo was successfully created"
    click_on "Back"
  end

  test "should update Nodehijo" do
    visit nodehijo_url(@nodehijo)
    click_on "Edit this nodehijo", match: :first

    fill_in "Description", with: @nodehijo.description
    fill_in "Papa", with: @nodehijo.papa
    fill_in "Title", with: @nodehijo.title
    click_on "Update Nodehijo"

    assert_text "Nodehijo was successfully updated"
    click_on "Back"
  end

  test "should destroy Nodehijo" do
    visit nodehijo_url(@nodehijo)
    click_on "Destroy this nodehijo", match: :first

    assert_text "Nodehijo was successfully destroyed"
  end
end
