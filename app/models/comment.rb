class Comment < ApplicationRecord
  belongs_to :article
  validates :body, presence: true
  validates_format_of :commenter,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, allow_blank: true
end