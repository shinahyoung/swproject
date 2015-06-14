require 'test_helper'

class QnaCommentsControllerTest < ActionController::TestCase
  setup do
    @qna_comment = qna_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qna_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qna_comment" do
    assert_difference('QnaComment.count') do
      post :create, qna_comment: { content: @qna_comment.content, name: @qna_comment.name, qna_id: @qna_comment.qna_id }
    end

    assert_redirected_to qna_comment_path(assigns(:qna_comment))
  end

  test "should show qna_comment" do
    get :show, id: @qna_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qna_comment
    assert_response :success
  end

  test "should update qna_comment" do
    patch :update, id: @qna_comment, qna_comment: { content: @qna_comment.content, name: @qna_comment.name, qna_id: @qna_comment.qna_id }
    assert_redirected_to qna_comment_path(assigns(:qna_comment))
  end

  test "should destroy qna_comment" do
    assert_difference('QnaComment.count', -1) do
      delete :destroy, id: @qna_comment
    end

    assert_redirected_to qna_comments_path
  end
end
