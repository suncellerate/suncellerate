class CreateSeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :seeds do |t|
      t.integer :share_id
      t.integer :project_id

      t.timestamps
    end
  end
end
