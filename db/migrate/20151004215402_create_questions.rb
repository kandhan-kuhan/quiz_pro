class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.string :ansa
      t.string :ansb
      t.string :cans

      t.timestamps null: false
    end
  end
end
