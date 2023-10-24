class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :name
      t.string :ocurrence_name
      t.integer :quantities
      t.datetime :request_date

      t.timestamps
    end
  end
end
