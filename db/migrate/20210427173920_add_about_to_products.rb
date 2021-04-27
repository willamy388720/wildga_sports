class AddAboutToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :about, :text
  end
end
