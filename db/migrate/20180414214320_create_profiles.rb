class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :postal_code
      t.string :country
      t.string :phone_number
      t.integer :annual_income
      t.string :gender

      t.timestamps
    end
  end
end
