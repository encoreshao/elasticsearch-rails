class Comment < ApplicationRecord
  belongs_to :article, touch: true
end
