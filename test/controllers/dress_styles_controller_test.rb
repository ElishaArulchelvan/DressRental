require 'test_helper'

class DressStylesControllerTest < ActionController::TestCase
  setup do
    @dress_style = dress_styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dress_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dress_style" do
    assert_difference('DressStyle.count') do
      post :create, dress_style: { style: @dress_style.style }
    end

    assert_redirected_to dress_style_path(assigns(:dress_style))
  end

  test "should show dress_style" do
    get :show, id: @dress_style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dress_style
    assert_response :success
  end

  test "should update dress_style" do
    patch :update, id: @dress_style, dress_style: { style: @dress_style.style }
    assert_redirected_to dress_style_path(assigns(:dress_style))
  end

  test "should destroy dress_style" do
    assert_difference('DressStyle.count', -1) do
      delete :destroy, id: @dress_style
    end

    assert_redirected_to dress_styles_path
  end
end
