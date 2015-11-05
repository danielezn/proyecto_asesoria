require 'test_helper'

class DoubtsControllerTest < ActionController::TestCase
  setup do
    @doubt = doubts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doubts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doubt" do
    assert_difference('Doubt.count') do
      post :create, doubt: { body: @doubt.body, title: @doubt.title }
    end

    assert_redirected_to doubt_path(assigns(:doubt))
  end

  test "should show doubt" do
    get :show, id: @doubt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doubt
    assert_response :success
  end

  test "should update doubt" do
    patch :update, id: @doubt, doubt: { body: @doubt.body, title: @doubt.title }
    assert_redirected_to doubt_path(assigns(:doubt))
  end

  test "should destroy doubt" do
    assert_difference('Doubt.count', -1) do
      delete :destroy, id: @doubt
    end

    assert_redirected_to doubts_path
  end
end
