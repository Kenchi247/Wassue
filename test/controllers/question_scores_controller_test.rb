require 'test_helper'

class QuestionScoresControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get question_scores_create_url
    assert_response :success
  end

  test "should get destroy" do
    get question_scores_destroy_url
    assert_response :success
  end

end
