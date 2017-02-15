class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :delete_all
  validates :name, :address, presence: true, uniqueness: true
  validates :address, presence: true
  validates :category, presence: true,  inclusion: { in: %w(chinese italian japanese french belgian) }

end
