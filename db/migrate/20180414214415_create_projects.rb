class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    enable_extension :postgis
    create_table :projects do |t|
      t.string :description
      t.integer :host_id
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :postal_code
      t.string :country
      t.st_point :long_lat, :geographic => true
      t.integer :seeds_required
      t.integer :share_price #in cents
      t.integer :seeds_count
      t.timestamps
      t.index :long_lat, using: :gist
    end
  end
end
