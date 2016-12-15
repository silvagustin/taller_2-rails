class CreateDispositivos < ActiveRecord::Migration[5.0]
  def change
    create_table :dispositivos do |t|
      t.string :mac

      t.timestamps
    end
  end
end
