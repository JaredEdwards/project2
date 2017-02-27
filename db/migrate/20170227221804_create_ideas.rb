class CreateIdeas < ActiveRecord::Migration[5.0]
  def change
    create_table :ideas do |t|
      t.string :author
      t.string :title
      t.datetime :datetime
      t.text :content

      t.timestamps
    end
  end
end
