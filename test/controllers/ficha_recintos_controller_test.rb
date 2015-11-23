require 'test_helper'

class FichaRecintosControllerTest < ActionController::TestCase
  setup do
    @ficha_recinto = ficha_recintos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ficha_recintos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ficha_recinto" do
    assert_difference('FichaRecinto.count') do
      post :create, ficha_recinto: { ficha_ingreso_id: @ficha_recinto.ficha_ingreso_id, observaciones: @ficha_recinto.observaciones, reo_id: @ficha_recinto.reo_id }
    end

    assert_redirected_to ficha_recinto_path(assigns(:ficha_recinto))
  end

  test "should show ficha_recinto" do
    get :show, id: @ficha_recinto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ficha_recinto
    assert_response :success
  end

  test "should update ficha_recinto" do
    patch :update, id: @ficha_recinto, ficha_recinto: { ficha_ingreso_id: @ficha_recinto.ficha_ingreso_id, observaciones: @ficha_recinto.observaciones, reo_id: @ficha_recinto.reo_id }
    assert_redirected_to ficha_recinto_path(assigns(:ficha_recinto))
  end

  test "should destroy ficha_recinto" do
    assert_difference('FichaRecinto.count', -1) do
      delete :destroy, id: @ficha_recinto
    end

    assert_redirected_to ficha_recintos_path
  end
end
