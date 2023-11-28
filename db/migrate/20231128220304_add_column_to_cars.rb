class AddColumnToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :picture_url, :string
  end
end
