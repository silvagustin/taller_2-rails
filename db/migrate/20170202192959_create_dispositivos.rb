class CreateDispositivos < ActiveRecord::Migration[5.0]
  def change
    create_table :dispositivos do |t|
      t.string :mac_address
      t.references :beacon, foreign_key: true
      t.datetime :ultima_conexion

      t.timestamps
    end
  end
end
