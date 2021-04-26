class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :description
      t.decimal :price
      t.string :image_url
      t.boolean :promotion
      t.decimal :pecent_promotion

      t.timestamps
    end
  end
end
