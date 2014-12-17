class CreatePlantBucketAssignments < ActiveRecord::Migration
  def change
    create_table :plant_bucket_assignments do |t|
      t.integer :bucket_id
      t.integer :plant_id

      t.timestamps
    end
  end
end
