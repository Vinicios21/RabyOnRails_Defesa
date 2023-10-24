require 'test_helper'

class OcurrencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ocurrence = ocurrences(:one)
  end

  test "should get index" do
    get ocurrences_url
    assert_response :success
  end

  test "should get new" do
    get new_ocurrence_url
    assert_response :success
  end

  test "should create ocurrence" do
    assert_difference('Ocurrence.count') do
      post ocurrences_url, params: { ocurrence: { cod: @ocurrence.cod, description: @ocurrence.description, title: @ocurrence.title } }
    end

    assert_redirected_to ocurrence_url(Ocurrence.last)
  end

  test "should show ocurrence" do
    get ocurrence_url(@ocurrence)
    assert_response :success
  end

  test "should get edit" do
    get edit_ocurrence_url(@ocurrence)
    assert_response :success
  end

  test "should update ocurrence" do
    patch ocurrence_url(@ocurrence), params: { ocurrence: { cod: @ocurrence.cod, description: @ocurrence.description, title: @ocurrence.title } }
    assert_redirected_to ocurrence_url(@ocurrence)
  end

  test "should destroy ocurrence" do
    assert_difference('Ocurrence.count', -1) do
      delete ocurrence_url(@ocurrence)
    end

    assert_redirected_to ocurrences_url
  end
end
