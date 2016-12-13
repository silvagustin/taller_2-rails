class CreateSemaforos < ActiveRecord::Migration[5.0]
  def change
    create_table :semaforos do |t|
      t.integer :estado
      t.belongs_to :semaforo, index: true

      t.timestamps
    end
  end
end
