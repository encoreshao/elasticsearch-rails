require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  teardown do
    Article.__elasticsearch__.unstub(:search)
  end


  
  test "has a search method delegating to __elasticsearch__" do
    Article.__elasticsearch__.expects(:search).with do |definition|
      assert_equal 'foo', definition.to_hash[:query][:bool][:should][0][:multi_match][:query]
      true
    end

    Article.search 'foo'
  end

end
