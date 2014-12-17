class Plant < ActiveRecord::Base
  has_many :plant_bucket_assignments
  has_many :buckets, through: :plant_bucket_assignments

  def current_bucket
    buckets.order(:created_at).last
  end

  def current_bucket=(bucket)
    buckets << bucket
  end

end
