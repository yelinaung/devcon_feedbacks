require 'test_helper'

class FeedbacksControllerTest < ActionController::TestCase
  setup do
    @feedback = feedbacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feedbacks)
  end

  test "should create feedback" do
    assert_difference('Feedback.count') do
      post :create, feedback: { anything: @feedback.anything, api: @feedback.api, content: @feedback.content, rate: @feedback.rate, speaker: @feedback.speaker, usefulness: @feedback.usefulness, vendor: @feedback.vendor }
    end

    assert_response 201
  end

  test "should show feedback" do
    get :show, id: @feedback
    assert_response :success
  end

  test "should update feedback" do
    put :update, id: @feedback, feedback: { anything: @feedback.anything, api: @feedback.api, content: @feedback.content, rate: @feedback.rate, speaker: @feedback.speaker, usefulness: @feedback.usefulness, vendor: @feedback.vendor }
    assert_response 204
  end

  test "should destroy feedback" do
    assert_difference('Feedback.count', -1) do
      delete :destroy, id: @feedback
    end

    assert_response 204
  end
end
