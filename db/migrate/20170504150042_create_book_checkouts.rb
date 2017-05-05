class CreateBookCheckouts < ActiveRecord::Migration[5.1]
  def change
    create_table :book_checkouts do |t|
      t.belongs_to :user, index: true
      t.belongs_to :book, index: true
      t.datetime :returned_at
#      t.date :due_date

      t.timestamps
    end
  end
end
