require 'test_helper'

class EmpresasDetallesControllerTest < ActionController::TestCase
  setup do
    @empresa_detalle = empresas_detalles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:empresas_detalles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create empresa_detalle" do
    assert_difference('EmpresaDetalle.count') do
      post :create, empresa_detalle: { departamento: @empresa_detalle.departamento, interno: @empresa_detalle.interno }
    end

    assert_redirected_to empresa_detalle_path(assigns(:empresa_detalle))
  end

  test "should show empresa_detalle" do
    get :show, id: @empresa_detalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @empresa_detalle
    assert_response :success
  end

  test "should update empresa_detalle" do
    put :update, id: @empresa_detalle, empresa_detalle: { departamento: @empresa_detalle.departamento, interno: @empresa_detalle.interno }
    assert_redirected_to empresa_detalle_path(assigns(:empresa_detalle))
  end

  test "should destroy empresa_detalle" do
    assert_difference('EmpresaDetalle.count', -1) do
      delete :destroy, id: @empresa_detalle
    end

    assert_redirected_to empresas_detalles_path
  end
end
