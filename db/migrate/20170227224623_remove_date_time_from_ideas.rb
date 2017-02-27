class RemoveDateTimeFromIdeas < ActiveRecord::Migration[5.0]
  def change
    remove_column :ideas, :datetime, :datetime
  end
end
