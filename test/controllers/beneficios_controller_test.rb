require 'test_helper'

class BeneficiosControllerTest < ActionController::TestCase
  setup do
    @beneficio = beneficios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beneficios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beneficio" do
    assert_difference('Beneficio.count') do
      post :create, beneficio: { codigo: @beneficio.codigo, desde: @beneficio.desde, hasta: @beneficio.hasta, merito_a: @beneficio.merito_a, reo_id: @beneficio.reo_id }
    end

    assert_redirected_to beneficio_path(assigns(:beneficio))
  end

  test "should show beneficio" do
    get :show, id: @beneficio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beneficio
    assert_response :success
  end

  test "should update beneficio" do
    patch :update, id: @beneficio, beneficio: { codigo: @beneficio.codigo, desde: @beneficio.desde, hasta: @beneficio.hasta, merito_a: @beneficio.merito_a, reo_id: @beneficio.reo_id }
    assert_redirected_to beneficio_path(assigns(:beneficio))
  end

  test "should destroy beneficio" do
    assert_difference('Beneficio.count', -1) do
      delete :destroy, id: @beneficio
    end

    assert_redirected_to beneficios_path
  end
end
