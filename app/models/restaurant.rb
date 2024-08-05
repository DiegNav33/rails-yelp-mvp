class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  # Définition de la liste des catégories autorisées
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES}
end
