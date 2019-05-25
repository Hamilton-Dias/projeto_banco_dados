class AddFk < ActiveRecord::Migration[5.2]
  def change
  	add_reference :users, :cargo, index: true, foreign_key: true
  	add_reference :users, :acc_type, index: true, foreign_key: true
  	add_reference :users, :empresa_portfolio, index: true, foreign_key: true
  	add_reference :empresa_portfolios, :possui, index: true, foreign_key: true
  	add_reference :possuis, :produto, index: true, foreign_key: true
  	add_reference :nota_orcamentos, :produto, index: true, foreign_key: true
  	add_reference :orcamentos, :nota_orcamento, index: true, foreign_key: true
  end
end
