require 'test_helper'

class PersonajeItemsControllerTest < ActionController::TestCase
  setup do
    @personaje_item = personaje_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personaje_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personaje_item" do
    assert_difference('PersonajeItem.count') do
      post :create, personaje_item: { danio: @personaje_item.danio, equipado: @personaje_item.equipado, item_id: @personaje_item.item_id, personaje_id: @personaje_item.personaje_id }
    end

    assert_redirected_to personaje_item_path(assigns(:personaje_item))
  end

  test "should show personaje_item" do
    get :show, id: @personaje_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personaje_item
    assert_response :success
  end

  test "should update personaje_item" do
    put :update, id: @personaje_item, personaje_item: { danio: @personaje_item.danio, equipado: @personaje_item.equipado, item_id: @personaje_item.item_id, personaje_id: @personaje_item.personaje_id }
    assert_redirected_to personaje_item_path(assigns(:personaje_item))
  end

  test "should destroy personaje_item" do
    assert_difference('PersonajeItem.count', -1) do
      delete :destroy, id: @personaje_item
    end

    assert_redirected_to personaje_items_path
  end
end
