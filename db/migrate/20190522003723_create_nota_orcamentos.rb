class CreateNotaOrcamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :nota_orcamentos do |t|
    	t.string :valor, null: false, default: 0
    	t.string :tipo, null: false, default: ''

      t.timestamps
    end
  end
end
