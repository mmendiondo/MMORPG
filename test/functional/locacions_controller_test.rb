require 'test_helper'

class LocacionsControllerTest < ActionController::TestCase
  setup do
    @locacion = locacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create locacion" do
    assert_difference('Locacion.count') do
      post :create, locacion: { distancia: @locacion.distancia, imagen: @locacion.imagen, nombre: @locacion.nombre }
    end

    assert_redirected_to locacion_path(assigns(:locacion))
  end

  test "should show locacion" do
    get :show, id: @locacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @locacion
    assert_response :success
  end

  test "should update locacion" do
    put :update, id: @locacion, locacion: { distancia: @locacion.distancia, imagen: @locacion.imagen, nombre: @locacion.nombre }
    assert_redirected_to locacion_path(assigns(:locacion))
  end

  test "should destroy locacion" do
    assert_difference('Locacion.count', -1) do
      delete :destroy, id: @locacion
    end

    assert_redirected_to locacions_path
  end
end
