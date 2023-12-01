class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :group

  validates :name, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 1 }
end
