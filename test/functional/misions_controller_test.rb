require 'test_helper'

class MisionsControllerTest < ActionController::TestCase
  setup do
    @mision = misions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:misions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mision" do
    assert_difference('Mision.count') do
      post :create, mision: { descripcion: @mision.descripcion, es_principal: @mision.es_principal, experiencia: @mision.experiencia, locacion_id: @mision.locacion_id, nivel_necesario: @mision.nivel_necesario, nombre: @mision.nombre, oro: @mision.oro, repetible: @mision.repetible }
    end

    assert_redirected_to mision_path(assigns(:mision))
  end

  test "should show mision" do
    get :show, id: @mision
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mision
    assert_response :success
  end

  test "should update mision" do
    put :update, id: @mision, mision: { descripcion: @mision.descripcion, es_principal: @mision.es_principal, experiencia: @mision.experiencia, locacion_id: @mision.locacion_id, nivel_necesario: @mision.nivel_necesario, nombre: @mision.nombre, oro: @mision.oro, repetible: @mision.repetible }
    assert_redirected_to mision_path(assigns(:mision))
  end

  test "should destroy mision" do
    assert_difference('Mision.count', -1) do
      delete :destroy, id: @mision
    end

    assert_redirected_to misions_path
  end
end
