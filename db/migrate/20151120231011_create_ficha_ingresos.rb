class CreateFichaIngresos < ActiveRecord::Migration
  def change
    create_table :ficha_ingresos do |t|
      t.string :codigo_ficha
      t.date :fecha_ingreso
      t.string :ubicacion
      t.string :condena

      t.timestamps null: false
    end
  end
end
