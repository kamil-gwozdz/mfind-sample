class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.integer :isbn, :limit => 8
      t.boolean :borrowed, default: false

      t.timestamps
    end
  end
end
