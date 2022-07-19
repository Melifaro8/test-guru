class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
<<<<<<< HEAD
      t.string :body, null: false, 
      t.references :question, null: false, foreign_key: true
      t.boolean :correct, null: false
      
=======
      t.string :body
      t.integer :question_id

>>>>>>> 5e3a7feb6babc0e17ac7344bcd33fc0ac835a734
      t.timestamps
    end
  end
end
