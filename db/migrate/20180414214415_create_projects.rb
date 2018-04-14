class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :description
      t.integer :host_id
      t.st_point :long_lat, :geographic => true
      t.integer :seeds_required
      t.integer :share_price #in cents
      t.integer :seeds_count
      t.timestamps
    end
  end
end
