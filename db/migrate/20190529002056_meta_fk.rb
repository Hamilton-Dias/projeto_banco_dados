class MetaFk < ActiveRecord::Migration[5.2]
  def change
  	add_reference :meta, :empresa_portfolio, index: true, foreign_key: true
  end
end
