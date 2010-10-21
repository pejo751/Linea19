require 'test_helper'

class FotoDeLegajosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foto_de_legajos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foto_de_legajo" do
    assert_difference('FotoDeLegajo.count') do
      post :create, :foto_de_legajo => { }
    end

    assert_redirected_to foto_de_legajo_path(assigns(:foto_de_legajo))
  end

  test "should show foto_de_legajo" do
    get :show, :id => foto_de_legajos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => foto_de_legajos(:one).to_param
    assert_response :success
  end

  test "should update foto_de_legajo" do
    put :update, :id => foto_de_legajos(:one).to_param, :foto_de_legajo => { }
    assert_redirected_to foto_de_legajo_path(assigns(:foto_de_legajo))
  end

  test "should destroy foto_de_legajo" do
    assert_difference('FotoDeLegajo.count', -1) do
      delete :destroy, :id => foto_de_legajos(:one).to_param
    end

    assert_redirected_to foto_de_legajos_path
  end
end
