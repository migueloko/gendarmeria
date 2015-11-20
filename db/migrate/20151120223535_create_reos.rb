class CreateReos < ActiveRecord::Migration
  def change
    create_table :reos do |t|
      t.string :rut
      t.string :nombre
      t.string :apellido
      t.string :direccion
      t.integer :fono
      t.string :correo
      t.references :recinto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
