require 'test_helper'

class SoundsetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @soundset = soundsets(:one)
  end

  test "should get index" do
    get soundsets_url
    assert_response :success
  end

  test "should get new" do
    get new_soundset_url
    assert_response :success
  end

  test "should create soundset" do
    assert_difference('Soundset.count') do
      post soundsets_url, params: { soundset: { name: @soundset.name } }
    end

    assert_redirected_to soundset_url(Soundset.last)
  end

  test "should show soundset" do
    get soundset_url(@soundset)
    assert_response :success
  end

  test "should get edit" do
    get edit_soundset_url(@soundset)
    assert_response :success
  end

  test "should update soundset" do
    patch soundset_url(@soundset), params: { soundset: { name: @soundset.name } }
    assert_redirected_to soundset_url(@soundset)
  end

  test "should destroy soundset" do
    assert_difference('Soundset.count', -1) do
      delete soundset_url(@soundset)
    end

    assert_redirected_to soundsets_url
  end
end
