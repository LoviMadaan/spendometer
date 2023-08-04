class Category < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :entities
  has_many :entities

  validates :name, :icon, presence: true
end
