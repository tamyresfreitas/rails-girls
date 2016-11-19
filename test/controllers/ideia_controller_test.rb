require 'test_helper'

class IdeiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ideium = ideia(:one)
  end

  test "should get index" do
    get ideia_url
    assert_response :success
  end

  test "should get new" do
    get new_ideium_url
    assert_response :success
  end

  test "should create ideium" do
    assert_difference('Ideium.count') do
      post ideia_url, params: { ideium: { description: @ideium.description, name: @ideium.name, picture: @ideium.picture } }
    end

    assert_redirected_to ideium_url(Ideium.last)
  end

  test "should show ideium" do
    get ideium_url(@ideium)
    assert_response :success
  end

  test "should get edit" do
    get edit_ideium_url(@ideium)
    assert_response :success
  end

  test "should update ideium" do
    patch ideium_url(@ideium), params: { ideium: { description: @ideium.description, name: @ideium.name, picture: @ideium.picture } }
    assert_redirected_to ideium_url(@ideium)
  end

  test "should destroy ideium" do
    assert_difference('Ideium.count', -1) do
      delete ideium_url(@ideium)
    end

    assert_redirected_to ideia_url
  end
end
