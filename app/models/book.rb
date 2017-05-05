class Book < ApplicationRecord

  has_many :book_checkouts
  has_many :users, through: :book_checkouts

  validates :name, presence: true
  validates :isbn, presence: true #format: {with: /^(97(8|9))?\d{9}(\d|X)$/, message: "Niepoprawny format ISBN"}
  validates :author, presence: true

  def is_borrowed?
#    return false if self.book_checkouts.order("created_at").last.nil?
#    self.book_checkouts.order("created_at").last.returned_at.nil?
    self.borrowed
  end
end
