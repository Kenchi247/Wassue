require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get questions_new_url
    assert_response :success
  end

  test "should get index" do
    get questions_index_url
    assert_response :success
  end

  test "should get sbow" do
    get questions_sbow_url
    assert_response :success
  end

  test "should get create" do
    get questions_create_url
    assert_response :success
  end

  test "should get update" do
    get questions_update_url
    assert_response :success
  end

  test "should get edit" do
    get questions_edit_url
    assert_response :success
  end

end
