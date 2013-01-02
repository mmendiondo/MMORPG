require 'test_helper'

class MisionMisionsControllerTest < ActionController::TestCase
  setup do
    @mision_mision = mision_misions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mision_misions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mision_mision" do
    assert_difference('MisionMision.count') do
      post :create, mision_mision: { mision_id: @mision_mision.mision_id, mision_relacionada_id: @mision_mision.mision_relacionada_id }
    end

    assert_redirected_to mision_mision_path(assigns(:mision_mision))
  end

  test "should show mision_mision" do
    get :show, id: @mision_mision
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mision_mision
    assert_response :success
  end

  test "should update mision_mision" do
    put :update, id: @mision_mision, mision_mision: { mision_id: @mision_mision.mision_id, mision_relacionada_id: @mision_mision.mision_relacionada_id }
    assert_redirected_to mision_mision_path(assigns(:mision_mision))
  end

  test "should destroy mision_mision" do
    assert_difference('MisionMision.count', -1) do
      delete :destroy, id: @mision_mision
    end

    assert_redirected_to mision_misions_path
  end
end
