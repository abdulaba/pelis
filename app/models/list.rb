class List < ApplicationRecord
  has_many :bookmarks , dependent: :destroy
  has_many :movies, through: :bookmarks

  validates :name, presence: {message: "El nombre no puede estar vacío"}, uniqueness: true
end
