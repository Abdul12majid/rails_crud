require "test_helper"

class CrudModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crud_model = crud_models(:one)
  end

  test "should get index" do
    get crud_models_url
    assert_response :success
  end

  test "should get new" do
    get new_crud_model_url
    assert_response :success
  end

  test "should create crud_model" do
    assert_difference("CrudModel.count") do
      post crud_models_url, params: { crud_model: { email: @crud_model.email, first_name: @crud_model.first_name, last_name: @crud_model.last_name, phone: @crud_model.phone } }
    end

    assert_redirected_to crud_model_url(CrudModel.last)
  end

  test "should show crud_model" do
    get crud_model_url(@crud_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_crud_model_url(@crud_model)
    assert_response :success
  end

  test "should update crud_model" do
    patch crud_model_url(@crud_model), params: { crud_model: { email: @crud_model.email, first_name: @crud_model.first_name, last_name: @crud_model.last_name, phone: @crud_model.phone } }
    assert_redirected_to crud_model_url(@crud_model)
  end

  test "should destroy crud_model" do
    assert_difference("CrudModel.count", -1) do
      delete crud_model_url(@crud_model)
    end

    assert_redirected_to crud_models_url
  end
end
