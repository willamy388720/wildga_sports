class RenameProductColumns < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :description, :product_name
    rename_column :products, :about, :description
    rename_column :products, :pecent_promotion, :percent_promotion
  end
end
