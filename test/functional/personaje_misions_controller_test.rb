require 'test_helper'

class PersonajeMisionsControllerTest < ActionController::TestCase
  setup do
    @personaje_mision = personaje_misions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personaje_misions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personaje_mision" do
    assert_difference('PersonajeMision.count') do
      post :create, personaje_mision: { finalizada: @personaje_mision.finalizada, mision_ids: @personaje_mision.mision_id, personaje_id: @personaje_mision.personaje_id }
    end

    assert_redirected_to personaje_mision_path(assigns(:personaje_mision))
  end

  test "should show personaje_mision" do
    get :show, id: @personaje_mision
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personaje_mision
    assert_response :success
  end

  test "should update personaje_mision" do
    put :update, id: @personaje_mision, personaje_mision: { finalizada: @personaje_mision.finalizada, mision_id: @personaje_mision.mision_id, personaje_id: @personaje_mision.personaje_id }
    assert_redirected_to personaje_mision_path(assigns(:personaje_mision))
  end

  test "should destroy personaje_mision" do
    assert_difference('PersonajeMision.count', -1) do
      delete :destroy, id: @personaje_mision
    end

    assert_redirected_to personaje_misions_path
  end
end
