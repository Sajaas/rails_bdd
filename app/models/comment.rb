class Comment < ApplicationRecord
  belongs_to :article
  validates :text, presence: true
  validates_format_of :email,with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, allow_blank: true
end