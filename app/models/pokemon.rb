class Pokemon < ApplicationRecord
  has_one :pokeball
  has_one :trainer, through: :pokeball
  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
end
