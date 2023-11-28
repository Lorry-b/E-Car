class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :category
      t.string :location
      t.date :start_availability
      t.date :end_availability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
