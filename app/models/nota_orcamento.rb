class NotaOrcamento < ApplicationRecord

	belongs_to :produto
	belongs_to :orcamento
end
