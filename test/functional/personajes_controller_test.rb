require 'test_helper'

class PersonajesControllerTest < ActionController::TestCase
  setup do
    @personaje = personajes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personajes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personaje" do
    assert_difference('Personaje.count') do
      post :create, personaje: { ataque: @personaje.ataque, defenza: @personaje.defenza, especie: @personaje.especie, experiencia: @personaje.experiencia, familia: @personaje.familia, locacion_id: @personaje.locacion_id, usuario_id: @personaje.usuario_id, nivel: @personaje.nivel, nombre: @personaje.nombre, oro: @personaje.oro, tipo: @personaje.tipo, vida: @personaje.vida, vida_perdida: @personaje.vida_perdida }
    end

    assert_redirected_to personaje_path(assigns(:personaje))
  end

  test "should show personaje" do
    get :show, id: @personaje
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personaje
    assert_response :success
  end

  test "should update personaje" do
    put :update, id: @personaje, personaje: { ataque: @personaje.ataque, defenza: @personaje.defenza, especie: @personaje.especie, experiencia: @personaje.experiencia, familia: @personaje.familia, locacion_id: @personaje.locacion_id, usuario_id: @personaje.usuario_id, nivel: @personaje.nivel, nombre: @personaje.nombre, oro: @personaje.oro, tipo: @personaje.tipo, vida: @personaje.vida, vida_perdida: @personaje.vida_perdida }
    assert_redirected_to personaje_path(assigns(:personaje))
  end

  test "should destroy personaje" do
    assert_difference('Personaje.count', -1) do
      delete :destroy, id: @personaje
    end

    assert_redirected_to personajes_path
  end
end
