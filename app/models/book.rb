class Book < ApplicationRecord

  has_many :book_checkouts
  has_many :users, through: :book_checkouts

  validates :name, presence: true
  validates :isbn, presence: true #format: {with: /^(97(8|9))?\d{9}(\d|X)$/, message: "Niepoprawny format ISBN"}
  validates :author, presence: true

end
