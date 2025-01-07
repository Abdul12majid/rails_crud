require "application_system_test_case"

class CrudModelsTest < ApplicationSystemTestCase
  setup do
    @crud_model = crud_models(:one)
  end

  test "visiting the index" do
    visit crud_models_url
    assert_selector "h1", text: "Crud models"
  end

  test "should create crud model" do
    visit crud_models_url
    click_on "New crud model"

    fill_in "Email", with: @crud_model.email
    fill_in "First name", with: @crud_model.first_name
    fill_in "Last name", with: @crud_model.last_name
    fill_in "Phone", with: @crud_model.phone
    click_on "Create Crud model"

    assert_text "Crud model was successfully created"
    click_on "Back"
  end

  test "should update Crud model" do
    visit crud_model_url(@crud_model)
    click_on "Edit this crud model", match: :first

    fill_in "Email", with: @crud_model.email
    fill_in "First name", with: @crud_model.first_name
    fill_in "Last name", with: @crud_model.last_name
    fill_in "Phone", with: @crud_model.phone
    click_on "Update Crud model"

    assert_text "Crud model was successfully updated"
    click_on "Back"
  end

  test "should destroy Crud model" do
    visit crud_model_url(@crud_model)
    click_on "Destroy this crud model", match: :first

    assert_text "Crud model was successfully destroyed"
  end
end
