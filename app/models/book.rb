class Book < ApplicationRecord
  belongs_to :author
  validates :author_id, :title, presence: true
  has_and_belongs_to_many :tags
end
