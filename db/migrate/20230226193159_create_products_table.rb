class CreateProductsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name 
    end 
  end
end
