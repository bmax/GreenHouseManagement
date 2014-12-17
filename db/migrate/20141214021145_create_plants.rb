class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.time :date_started
      t.time :date_finished
      t.time :date_expected_finish
      t.text :description
      t.integer :previous_buckets

      t.timestamps
    end
  end
end
