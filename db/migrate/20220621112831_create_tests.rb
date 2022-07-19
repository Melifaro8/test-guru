class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.string :title
      t.integer :level
<<<<<<< HEAD
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.references :category, null: false, foreign_key: true
=======
>>>>>>> 5e3a7feb6babc0e17ac7344bcd33fc0ac835a734

      t.timestamps
    end
  end
end
