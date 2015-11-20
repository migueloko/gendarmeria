require 'test_helper'

class ReosControllerTest < ActionController::TestCase
  setup do
    @reo = reos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reo" do
    assert_difference('Reo.count') do
      post :create, reo: { apellido: @reo.apellido, correo: @reo.correo, direccion: @reo.direccion, fono: @reo.fono, nombre: @reo.nombre, recinto_id: @reo.recinto_id, rut: @reo.rut }
    end

    assert_redirected_to reo_path(assigns(:reo))
  end

  test "should show reo" do
    get :show, id: @reo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reo
    assert_response :success
  end

  test "should update reo" do
    patch :update, id: @reo, reo: { apellido: @reo.apellido, correo: @reo.correo, direccion: @reo.direccion, fono: @reo.fono, nombre: @reo.nombre, recinto_id: @reo.recinto_id, rut: @reo.rut }
    assert_redirected_to reo_path(assigns(:reo))
  end

  test "should destroy reo" do
    assert_difference('Reo.count', -1) do
      delete :destroy, id: @reo
    end

    assert_redirected_to reos_path
  end
end
