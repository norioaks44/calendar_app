class AddNamesToEvents < ActiveRecord::Migration[6.0]
  def change
    add_index :events, :start_time, unique: true
  end
end
