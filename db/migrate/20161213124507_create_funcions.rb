class CreateFuncions < ActiveRecord::Migration[5.0]
  def change
    create_table :funcions do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
