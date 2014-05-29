require 'test_helper'

class ThoughtsControllerTest < ActionController::TestCase
  setup do
    @thought = thoughts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thoughts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thought" do
    assert_difference('Thought.count') do
      post :create, thought: { body: @thought.body, example_id: @thought.example_id, title: @thought.title }
    end

    assert_redirected_to thought_path(assigns(:thought))
  end

  test "should show thought" do
    get :show, id: @thought
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thought
    assert_response :success
  end

  test "should update thought" do
    patch :update, id: @thought, thought: { body: @thought.body, example_id: @thought.example_id, title: @thought.title }
    assert_redirected_to thought_path(assigns(:thought))
  end

  test "should destroy thought" do
    assert_difference('Thought.count', -1) do
      delete :destroy, id: @thought
    end

    assert_redirected_to thoughts_path
  end
end
