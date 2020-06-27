require 'test_helper'

class AuthorshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @authorship = authorships(:one)
  end

  test "should get index" do
    get authorships_url
    assert_response :success
  end

  test "should get new" do
    get new_authorship_url
    assert_response :success
  end

  test "should create authorship" do
    assert_difference('Authorship.count') do
      post authorships_url, params: { authorship: { article_id: @authorship.article_id, author_id: @authorship.author_id } }
    end

    assert_redirected_to authorship_url(Authorship.last)
  end

  test "should show authorship" do
    get authorship_url(@authorship)
    assert_response :success
  end

  test "should get edit" do
    get edit_authorship_url(@authorship)
    assert_response :success
  end

  test "should update authorship" do
    patch authorship_url(@authorship), params: { authorship: { article_id: @authorship.article_id, author_id: @authorship.author_id } }
    assert_redirected_to authorship_url(@authorship)
  end

  test "should destroy authorship" do
    assert_difference('Authorship.count', -1) do
      delete authorship_url(@authorship)
    end

    assert_redirected_to authorships_url
  end
end
