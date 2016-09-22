require 'test_helper'

class RecrutadorsControllerTest < ActionController::TestCase
  setup do
    @recrutador = recrutadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recrutadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recrutador" do
    assert_difference('Recrutador.count') do
      post :create, recrutador: { Id_Pessoa: @recrutador.Id_Pessoa, Id_Recrutador: @recrutador.Id_Recrutador, empresa: @recrutador.empresa }
    end

    assert_redirected_to recrutador_path(assigns(:recrutador))
  end

  test "should show recrutador" do
    get :show, id: @recrutador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recrutador
    assert_response :success
  end

  test "should update recrutador" do
    patch :update, id: @recrutador, recrutador: { Id_Pessoa: @recrutador.Id_Pessoa, Id_Recrutador: @recrutador.Id_Recrutador, empresa: @recrutador.empresa }
    assert_redirected_to recrutador_path(assigns(:recrutador))
  end

  test "should destroy recrutador" do
    assert_difference('Recrutador.count', -1) do
      delete :destroy, id: @recrutador
    end

    assert_redirected_to recrutadors_path
  end
end
