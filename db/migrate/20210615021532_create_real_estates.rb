class CreateRealEstates < ActiveRecord::Migration[6.1]
  def change
    create_table :real_estates , id: false, primary_key: :id do |t|
      t.integer :id
      t.string :name
      t.integer :type
      t.string :street
      t.string :external_number
      t.string :internal_number
      t.string :neighborhood
      t.string :city
      t.string :country
      t.integer :rooms
      t.integer :bathrooms
      t.string :comments

      t.timestamps
    end
  end
end
