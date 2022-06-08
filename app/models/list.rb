class List < ApplicationRecord
  has_many :bookmarks , dependent: :destroy
  #@list = List.find(:id)
  #Me permitirá escribir en la vista: @list.bookmarks.each do |bookmark|
  #    bookmark.nombre_columna_a_mostrar
  # end
  has_many :movies, through: :bookmarks
  has_many :reviews, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: {message: "El nombre no puede estar vacío"}, uniqueness: true
end
