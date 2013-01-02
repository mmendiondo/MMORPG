require 'test_helper'

class TipoPersonajesControllerTest < ActionController::TestCase
  setup do
    @tipo_personaje = tipo_personajes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_personajes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_personaje" do
    assert_difference('TipoPersonaje.count') do
      post :create, tipo_personaje: { descripcion: @tipo_personaje.descripcion, imagen: @tipo_personaje.imagen, nombre: @tipo_personaje.nombre }
    end

    assert_redirected_to tipo_personaje_path(assigns(:tipo_personaje))
  end

  test "should show tipo_personaje" do
    get :show, id: @tipo_personaje
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_personaje
    assert_response :success
  end

  test "should update tipo_personaje" do
    put :update, id: @tipo_personaje, tipo_personaje: { descripcion: @tipo_personaje.descripcion, imagen: @tipo_personaje.imagen, nombre: @tipo_personaje.nombre }
    assert_redirected_to tipo_personaje_path(assigns(:tipo_personaje))
  end

  test "should destroy tipo_personaje" do
    assert_difference('TipoPersonaje.count', -1) do
      delete :destroy, id: @tipo_personaje
    end

    assert_redirected_to tipo_personajes_path
  end
end
