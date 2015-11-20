require 'test_helper'

class RecintosControllerTest < ActionController::TestCase
  setup do
    @recinto = recintos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recintos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recinto" do
    assert_difference('Recinto.count') do
      post :create, recinto: { cantidad_reo: @recinto.cantidad_reo, codigo: @recinto.codigo, nombre: @recinto.nombre, ubicacion: @recinto.ubicacion }
    end

    assert_redirected_to recinto_path(assigns(:recinto))
  end

  test "should show recinto" do
    get :show, id: @recinto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recinto
    assert_response :success
  end

  test "should update recinto" do
    patch :update, id: @recinto, recinto: { cantidad_reo: @recinto.cantidad_reo, codigo: @recinto.codigo, nombre: @recinto.nombre, ubicacion: @recinto.ubicacion }
    assert_redirected_to recinto_path(assigns(:recinto))
  end

  test "should destroy recinto" do
    assert_difference('Recinto.count', -1) do
      delete :destroy, id: @recinto
    end

    assert_redirected_to recintos_path
  end
end
