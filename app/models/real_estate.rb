class RealEstate < ApplicationRecord
  # Set type disabled inheritance column
  self.inheritance_column = :_type_disabled
  # Set primary key
  self.primary_key = :id
  # Set values of type column
  enum type: [ :house, :department, :land, :commercial_ground ]
  validates :name, :presence => true, format: { with: /\A[a-zA-Z\s]{1,128}\z/, message: "only allows 128 characters." }
  validates :external_number, :presence => true,format: { with: /\A[0-9\-]{1,12}\z/, message: "only allows alphanumerics and dash symbol" }
  validates :street, :presence => true, format: { with: /\A[a-zA-Z\s]{1,128}\z/, message: "only allows 128 characters." }
  validates :external_number, format: { with: /([0-9\-]){1,12}/, message: "only allows alphanumerics and dash symbol" }
  validates :neighborhood, :presence => true, format: { with: /\A[a-zA-Z\s]{1,128}\z/, message: "only allows 128 characters." }
  validates :city, :presence => true, format: { with: /\A[a-zA-Z\s]{1,64}\z/, message: "only allows 64 characters." }
  validates :country, :presence => true
  validates :rooms, :presence => true
end
