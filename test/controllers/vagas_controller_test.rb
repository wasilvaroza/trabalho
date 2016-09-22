require 'test_helper'

class VagasControllerTest < ActionController::TestCase
  setup do
    @vaga = vagas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vagas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vaga" do
    assert_difference('Vaga.count') do
      post :create, vaga: { Id_Recrutador: @vaga.Id_Recrutador, Id_Vaga: @vaga.Id_Vaga, cargaHoraria: @vaga.cargaHoraria, cargo: @vaga.cargo, email: @vaga.email, salario: @vaga.salario, telefone: @vaga.telefone }
    end

    assert_redirected_to vaga_path(assigns(:vaga))
  end

  test "should show vaga" do
    get :show, id: @vaga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vaga
    assert_response :success
  end

  test "should update vaga" do
    patch :update, id: @vaga, vaga: { Id_Recrutador: @vaga.Id_Recrutador, Id_Vaga: @vaga.Id_Vaga, cargaHoraria: @vaga.cargaHoraria, cargo: @vaga.cargo, email: @vaga.email, salario: @vaga.salario, telefone: @vaga.telefone }
    assert_redirected_to vaga_path(assigns(:vaga))
  end

  test "should destroy vaga" do
    assert_difference('Vaga.count', -1) do
      delete :destroy, id: @vaga
    end

    assert_redirected_to vagas_path
  end
end
