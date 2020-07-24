require 'test_helper'

class PepesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pepe = pepes(:one)
  end

  test "should get index" do
    get pepes_url
    assert_response :success
  end

  test "should get new" do
    get new_pepe_url
    assert_response :success
  end

  test "should create pepe" do
    assert_difference('Pepe.count') do
      post pepes_url, params: { pepe: { edad: @pepe.edad, nombre: @pepe.nombre } }
    end

    assert_redirected_to pepe_url(Pepe.last)
  end

  test "should show pepe" do
    get pepe_url(@pepe)
    assert_response :success
  end

  test "should get edit" do
    get edit_pepe_url(@pepe)
    assert_response :success
  end

  test "should update pepe" do
    patch pepe_url(@pepe), params: { pepe: { edad: @pepe.edad, nombre: @pepe.nombre } }
    assert_redirected_to pepe_url(@pepe)
  end

  test "should destroy pepe" do
    assert_difference('Pepe.count', -1) do
      delete pepe_url(@pepe)
    end

    assert_redirected_to pepes_url
  end
end
