class CreateBeacons < ActiveRecord::Migration[5.0]
  def change
    create_table :beacons do |t|
      t.string :uuid
      t.string :latitud
      t.string :longitud
      t.belongs_to :function, index: true

      t.timestamps
    end
  end
end
