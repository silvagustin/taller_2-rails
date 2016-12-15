class AddNombreToBeacons < ActiveRecord::Migration[5.0]
  def change
    add_column :beacons, :nombre, :string
  end
end
