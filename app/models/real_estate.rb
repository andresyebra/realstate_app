class RealEstate < ApplicationRecord
  # Set type disabled inheritance column
  self.inheritance_column = :_type_disabled

  # Set primary key
  self.primary_key = :id

  # Set values of type column
  enum type: [ :house, :department, :land, :commercial_ground ]
  #Validation to name column
  validates :name, :presence => true, format: { with: /\A[a-zA-Z\s]{1,128}\z/, message: "only allows 128 characters." }

  #Validation to type column
  validates :type, :presence => true

  #Validation to street column
  validates :street, :presence => true, format: { with: /\A[a-zA-Z\s]{1,128}\z/, message: "only allows 128 characters." }

  #Validation to external_number column
  validates :external_number, :presence => true, format: { with: /\A[0-9\-]{1,12}\z/, message: "only allows alphanumerics and dash symbol" }

  #Validation to internal_number column
  validates :internal_number,format: { with: /([0-9\-]){1,12}/, message: "only allows alphanumerics and dash symbol" }, :if => :valid_internal_number?

  #Validation to neighborhood column
  validates :neighborhood, :presence => true, format: { with: /\A[a-zA-Z\s]{1,128}\z/, message: "only allows 128 characters." }

  #Validation to city column
  validates :city, :presence => true, format: { with: /\A[a-zA-Z\s]{1,64}\z/, message: "only allows 64 characters." }

  #Validation to country column
  validates :country, :presence => true, :if => :valid_country?

  #Validation to rooms column
  validates :rooms, :presence => true

  #Validation to bathrooms column
  validates :bathrooms, :presence => true

  def valid_country?
    # Set the ISO3166 object with country
    c = ISO3166::Country[country]
    # If the country is not found return error
    if c.nil?
      errors.add(:country, :invalid)
      return false
    end
    true
  end

  def valid_internal_number?
    # If the internal_number is null and the type is "department" or "commercial_ground" return error
    if internal_number.nil? && (type == "department" || type == "commercial_ground")
      errors.add(:internal_number, :invalid)
      return false
    end
    true
  end
end
