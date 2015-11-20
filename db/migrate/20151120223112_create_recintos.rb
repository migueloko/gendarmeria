class CreateRecintos < ActiveRecord::Migration
  def change
    create_table :recintos do |t|
      t.string :codigo
      t.string :nombre
      t.string :ubicacion
      t.integer :cantidad_reo

      t.timestamps null: false
    end
  end
end
