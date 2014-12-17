class CreateBuckets < ActiveRecord::Migration
  def change
    create_table :buckets do |t|
      t.integer :bucket_type, default: 0
      t.string :name

      t.timestamps
    end
  end
end
