class Authorship < ApplicationRecord
  belongs_to :article, touch: true

  belongs_to :author
end
