class CreateEmpresaPortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :empresa_portfolios do |t|
    	t.integer :cluster, null: false, default: ''
    	t.string :nome, null: false, default: ''
    	t.string :telefone, null: false, default: ''
    	t.string :email, null: false, default: ''

      t.timestamps
    end
  end
end
