class CreateOcurrences < ActiveRecord::Migration[5.2]
  def change
    create_table :ocurrences do |t|
      t.string :title
      t.integer :cod
      t.string :description

      t.timestamps
    end
  end
end
