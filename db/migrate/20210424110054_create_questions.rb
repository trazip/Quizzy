class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.integer :order
      t.boolean :active
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end
