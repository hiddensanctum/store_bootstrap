require 'test_helper'

class ProdutsControllerTest < ActionController::TestCase
  setup do
    @produt = produts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produt" do
    assert_difference('Produt.count') do
      post :create, produt: { name: @produt.name, price: @produt.price }
    end

    assert_redirected_to produt_path(assigns(:produt))
  end

  test "should show produt" do
    get :show, id: @produt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produt
    assert_response :success
  end

  test "should update produt" do
    patch :update, id: @produt, produt: { name: @produt.name, price: @produt.price }
    assert_redirected_to produt_path(assigns(:produt))
  end

  test "should destroy produt" do
    assert_difference('Produt.count', -1) do
      delete :destroy, id: @produt
    end

    assert_redirected_to produts_path
  end
end
