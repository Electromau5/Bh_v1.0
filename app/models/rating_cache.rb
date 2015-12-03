class RatingCache < ActiveRecord::Base
  belongs_to :cacheable, :polymorphic => true
  ratyrate_rateable 'rating'
end