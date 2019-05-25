class CreateOrcamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :orcamentos do |t|
    	t.integer :valor, null: false, default: 0

      t.timestamps
    end
  end
end
