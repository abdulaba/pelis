class List < ApplicationRecord
  has_many :bookmarks , dependent: :destroy
  #Esta asociación permite consultar los bookmarks asociados
  #a List ---->>> list.bookmarks
  has_many :movies, through: :bookmarks

  validates :name, presence: {message: "El nombre no puede estar vacío"}, uniqueness: true
end
