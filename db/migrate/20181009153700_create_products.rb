class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :desc
      t.string :images
      t.string :price
      t.string :discounted_price
      t.timestamps
    end
  end
end
