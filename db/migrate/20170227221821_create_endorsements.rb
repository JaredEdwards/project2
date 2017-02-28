class CreateEndorsements < ActiveRecord::Migration[5.0]
  def change
    create_table :endorsements do |t|
      t.string :author
      t.decimal :amount
      t.references :idea, foreign_key: true

      t.timestamps
    end
  end
end
