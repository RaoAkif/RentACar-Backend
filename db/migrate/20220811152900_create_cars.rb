class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :model
      t.text :desc
      t.string :image
      t.decimal :rent, precision: 10, scale: 2

      t.timestamps
    end
  end
end
