class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :old
      t.integer :telephone
      t.string :gender
      t.datetime :birthdays

      t.timestamps
    end
  end
end
