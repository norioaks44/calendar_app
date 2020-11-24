class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :title_id
      t.text :info
      t.date :start_time
      t.integer :meeting_time_id
      t.text :coach_review
      
      t.timestamps
    end
  end
end
