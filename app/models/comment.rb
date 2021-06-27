class Comment < ApplicationRecord
  belongs_to :blog
  validates :content, predence: true
end
