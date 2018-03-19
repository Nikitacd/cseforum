class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.text :body
      t.integer :likes
      t.integer :dislikes
      t.integer :ques_id
      t.integer :user_id

      t.timestamps
    end
  end
end
