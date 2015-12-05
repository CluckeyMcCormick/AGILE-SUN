require 'test_helper'

class RatedTalentsControllerTest < ActionController::TestCase
  setup do
    @rated_talent = rated_talents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rated_talents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rated_talent" do
    assert_difference('RatedTalent.count') do
      post :create, rated_talent: { rating: @rated_talent.rating, talent_id: @rated_talent.talent_id, user_id: @rated_talent.user_id }
    end

    assert_redirected_to rated_talent_path(assigns(:rated_talent))
  end

  test "should show rated_talent" do
    get :show, id: @rated_talent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rated_talent
    assert_response :success
  end

  test "should update rated_talent" do
    patch :update, id: @rated_talent, rated_talent: { rating: @rated_talent.rating, talent_id: @rated_talent.talent_id, user_id: @rated_talent.user_id }
    assert_redirected_to rated_talent_path(assigns(:rated_talent))
  end

  test "should destroy rated_talent" do
    assert_difference('RatedTalent.count', -1) do
      delete :destroy, id: @rated_talent
    end

    assert_redirected_to rated_talents_path
  end
end
