class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :text
      t.string :notes
      t.boolean :isCompleted
      t.timestamps
    end
  end
end
