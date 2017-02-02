class AddNombreLargoToBeacons < ActiveRecord::Migration[5.0]
  def change
    add_column :beacons, :nombre_largo, :string
  end
end
