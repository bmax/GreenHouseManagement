class Bucket < ActiveRecord::Base
  validates :name, presence: true
  validates :bucket_type, presence: true
  enum bucket_type: [ :three, :seven, :dry ]
  has_many :plant_bucket_assignments
  has_many :plants, through: :plant_bucket_assignments
end
