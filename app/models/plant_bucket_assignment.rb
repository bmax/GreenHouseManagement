class PlantBucketAssignment < ActiveRecord::Base
  belongs_to :plant
  belongs_to :bucket
end
