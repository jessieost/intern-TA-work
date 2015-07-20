class ChangeCrunchFactorName < ActiveRecord::Migration
  def change
  	rename_column :rusks, :crunch_fator, :crunch_factor
  end
end
