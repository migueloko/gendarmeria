class CreateFichaRecintos < ActiveRecord::Migration
  def change
    create_table :ficha_recintos do |t|
      t.references :ficha_ingreso, index: true, foreign_key: true
      t.references :reo, index: true, foreign_key: true
      t.text :observaciones

      t.timestamps null: false
    end
  end
end
