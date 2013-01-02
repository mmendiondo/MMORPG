require 'test_helper'

class RegistroPeleasControllerTest < ActionController::TestCase
  setup do
    @registro_pelea = registro_peleas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registro_peleas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registro_pelea" do
    assert_difference('RegistroPelea.count') do
      post :create, registro_pelea: { danio_ganador: @registro_pelea.danio_ganador, danio_perdedor: @registro_pelea.danio_perdedor, ganador_id: @registro_pelea.ganador_id, perdedor_id: @registro_pelea.perdedor_id, personaje_id: @registro_pelea.personaje_id, personaje_enemigo_id: @registro_pelea.personaje_enemigo_id }
    end

    assert_redirected_to registro_pelea_path(assigns(:registro_pelea))
  end

  test "should show registro_pelea" do
    get :show, id: @registro_pelea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registro_pelea
    assert_response :success
  end

  test "should update registro_pelea" do
    put :update, id: @registro_pelea, registro_pelea: { danio_ganador: @registro_pelea.danio_ganador, danio_perdedor: @registro_pelea.danio_perdedor, ganador_id: @registro_pelea.ganador_id, perdedor_id: @registro_pelea.perdedor_id, personaje_id: @registro_pelea.personaje_id, personaje_enemigo_id: @registro_pelea.personaje_enemigo_id }
    assert_redirected_to registro_pelea_path(assigns(:registro_pelea))
  end

  test "should destroy registro_pelea" do
    assert_difference('RegistroPelea.count', -1) do
      delete :destroy, id: @registro_pelea
    end

    assert_redirected_to registro_peleas_path
  end
end
