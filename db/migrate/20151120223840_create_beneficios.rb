class CreateBeneficios < ActiveRecord::Migration
  def change
    create_table :beneficios do |t|
      t.string :codigo
      t.text :merito_a
      t.date :desde
      t.date :hasta
      t.references :reo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
