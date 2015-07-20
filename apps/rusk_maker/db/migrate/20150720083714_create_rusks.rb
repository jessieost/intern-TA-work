class CreateRusks < ActiveRecord::Migration
  def change
    create_table :rusks do |t|
      t.string :base
      t.string :extras
      t.boolean :dippable
      t.integer :crunch_fator

      t.timestamps null: false
    end
  end
end
