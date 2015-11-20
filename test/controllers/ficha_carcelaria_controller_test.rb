require 'test_helper'

class FichaCarcelariaControllerTest < ActionController::TestCase
  setup do
    @ficha_carcelarium = ficha_carcelaria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ficha_carcelaria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ficha_carcelarium" do
    assert_difference('FichaCarcelarium.count') do
      post :create, ficha_carcelarium: { codigo_ficha_ingreso: @ficha_carcelarium.codigo_ficha_ingreso, fecha_ingreso_date: @ficha_carcelarium.fecha_ingreso_date, ficha_ingreso__id: @ficha_carcelarium.ficha_ingreso__id, reo_id: @ficha_carcelarium.reo_id, rut_reo: @ficha_carcelarium.rut_reo }
    end

    assert_redirected_to ficha_carcelarium_path(assigns(:ficha_carcelarium))
  end

  test "should show ficha_carcelarium" do
    get :show, id: @ficha_carcelarium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ficha_carcelarium
    assert_response :success
  end

  test "should update ficha_carcelarium" do
    patch :update, id: @ficha_carcelarium, ficha_carcelarium: { codigo_ficha_ingreso: @ficha_carcelarium.codigo_ficha_ingreso, fecha_ingreso_date: @ficha_carcelarium.fecha_ingreso_date, ficha_ingreso__id: @ficha_carcelarium.ficha_ingreso__id, reo_id: @ficha_carcelarium.reo_id, rut_reo: @ficha_carcelarium.rut_reo }
    assert_redirected_to ficha_carcelarium_path(assigns(:ficha_carcelarium))
  end

  test "should destroy ficha_carcelarium" do
    assert_difference('FichaCarcelarium.count', -1) do
      delete :destroy, id: @ficha_carcelarium
    end

    assert_redirected_to ficha_carcelaria_path
  end
end
