class CreateFichaCarcelaria < ActiveRecord::Migration
  def change
    create_table :ficha_carcelaria do |t|
      t.string :codigo_ficha_ingreso
      t.string :fecha_ingreso_date
      t.string :rut_reo
      t.references :reo, index: true, foreign_key: true
      t.references :ficha_ingreso_, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
