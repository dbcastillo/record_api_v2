class CreateRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :records do |t|
      t.string :album
      t.string :artist
      t.integer :year
      t.decimal :price
      t.string :cover

      t.timestamps
    end
  end
end
