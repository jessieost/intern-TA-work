class AddNameToRusks < ActiveRecord::Migration
  def change
  	add_column :rusks, :name, :string
  end
end
