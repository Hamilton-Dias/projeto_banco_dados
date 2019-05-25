class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
    	t.integer :valor, null: false, default: 0
    	t.integer :quantidade, null: false, default: 0

      t.timestamps
    end
  end
end
