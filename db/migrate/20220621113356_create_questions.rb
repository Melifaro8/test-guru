class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :body
<<<<<<< HEAD
      t.references :test, null: false, foreign_key: true
=======
      t.integer :test_id
>>>>>>> 5e3a7feb6babc0e17ac7344bcd33fc0ac835a734

      t.timestamps
    end
  end
end
