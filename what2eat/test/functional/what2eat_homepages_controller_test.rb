require 'test_helper'

class What2eatHomepagesControllerTest < ActionController::TestCase
  setup do
    @what2eat_homepage = what2eat_homepages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:what2eat_homepages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create what2eat_homepage" do
    assert_difference('What2eatHomepage.count') do
      post :create, what2eat_homepage: {  }
    end

    assert_redirected_to what2eat_homepage_path(assigns(:what2eat_homepage))
  end

  test "should show what2eat_homepage" do
    get :show, id: @what2eat_homepage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @what2eat_homepage
    assert_response :success
  end

  test "should update what2eat_homepage" do
    put :update, id: @what2eat_homepage, what2eat_homepage: {  }
    assert_redirected_to what2eat_homepage_path(assigns(:what2eat_homepage))
  end

  test "should destroy what2eat_homepage" do
    assert_difference('What2eatHomepage.count', -1) do
      delete :destroy, id: @what2eat_homepage
    end

    assert_redirected_to what2eat_homepages_path
  end
end
