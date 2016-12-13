require 'test_helper'

class FuncionesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get funciones_show_url
    assert_response :success
  end

  test "should get index" do
    get funciones_index_url
    assert_response :success
  end

  test "should get new" do
    get funciones_new_url
    assert_response :success
  end

  test "should get edit" do
    get funciones_edit_url
    assert_response :success
  end

end
