class Produto < ApplicationRecord

	has_many :possuis
	has_many :nota_orcamentos
	
end
