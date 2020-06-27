require "application_system_test_case"

class AuthorshipsTest < ApplicationSystemTestCase
  setup do
    @authorship = authorships(:one)
  end

  test "visiting the index" do
    visit authorships_url
    assert_selector "h1", text: "Authorships"
  end

  test "creating a Authorship" do
    visit authorships_url
    click_on "New Authorship"

    fill_in "Article", with: @authorship.article_id
    fill_in "Author", with: @authorship.author_id
    click_on "Create Authorship"

    assert_text "Authorship was successfully created"
    click_on "Back"
  end

  test "updating a Authorship" do
    visit authorships_url
    click_on "Edit", match: :first

    fill_in "Article", with: @authorship.article_id
    fill_in "Author", with: @authorship.author_id
    click_on "Update Authorship"

    assert_text "Authorship was successfully updated"
    click_on "Back"
  end

  test "destroying a Authorship" do
    visit authorships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Authorship was successfully destroyed"
  end
end
