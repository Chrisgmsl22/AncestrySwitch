require "test_helper"

class NodehijosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nodehijo = nodehijos(:one)
  end

  test "should get index" do
    get nodehijos_url
    assert_response :success
  end

  test "should get new" do
    get new_nodehijo_url
    assert_response :success
  end

  test "should create nodehijo" do
    assert_difference("Nodehijo.count") do
      post nodehijos_url, params: { nodehijo: { description: @nodehijo.description, papa: @nodehijo.papa, title: @nodehijo.title } }
    end

    assert_redirected_to nodehijo_url(Nodehijo.last)
  end

  test "should show nodehijo" do
    get nodehijo_url(@nodehijo)
    assert_response :success
  end

  test "should get edit" do
    get edit_nodehijo_url(@nodehijo)
    assert_response :success
  end

  test "should update nodehijo" do
    patch nodehijo_url(@nodehijo), params: { nodehijo: { description: @nodehijo.description, papa: @nodehijo.papa, title: @nodehijo.title } }
    assert_redirected_to nodehijo_url(@nodehijo)
  end

  test "should destroy nodehijo" do
    assert_difference("Nodehijo.count", -1) do
      delete nodehijo_url(@nodehijo)
    end

    assert_redirected_to nodehijos_url
  end
end
