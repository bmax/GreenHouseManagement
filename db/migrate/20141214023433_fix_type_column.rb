class FixTypeColumn < ActiveRecord::Migration
  def change
    change_table :buckets do |t|
      t.rename :type, :bucket_type
    end
  end
end
