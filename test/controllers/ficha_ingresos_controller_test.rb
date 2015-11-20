require 'test_helper'

class FichaIngresosControllerTest < ActionController::TestCase
  setup do
    @ficha_ingreso = ficha_ingresos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ficha_ingresos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ficha_ingreso" do
    assert_difference('FichaIngreso.count') do
      post :create, ficha_ingreso: { codigo_ficha: @ficha_ingreso.codigo_ficha, condena: @ficha_ingreso.condena, fecha_ingreso: @ficha_ingreso.fecha_ingreso, ubicacion: @ficha_ingreso.ubicacion }
    end

    assert_redirected_to ficha_ingreso_path(assigns(:ficha_ingreso))
  end

  test "should show ficha_ingreso" do
    get :show, id: @ficha_ingreso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ficha_ingreso
    assert_response :success
  end

  test "should update ficha_ingreso" do
    patch :update, id: @ficha_ingreso, ficha_ingreso: { codigo_ficha: @ficha_ingreso.codigo_ficha, condena: @ficha_ingreso.condena, fecha_ingreso: @ficha_ingreso.fecha_ingreso, ubicacion: @ficha_ingreso.ubicacion }
    assert_redirected_to ficha_ingreso_path(assigns(:ficha_ingreso))
  end

  test "should destroy ficha_ingreso" do
    assert_difference('FichaIngreso.count', -1) do
      delete :destroy, id: @ficha_ingreso
    end

    assert_redirected_to ficha_ingresos_path
  end
end
