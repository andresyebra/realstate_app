class RealEstate < ApplicationRecord
  # Set type disabled inheritance column
  self.inheritance_column = :_type_disabled
  # Set primary key
  self.primary_key = :id
  # Set values of type column
  enum type: [ :house, :department, :land, :commercial_ground ]
end
