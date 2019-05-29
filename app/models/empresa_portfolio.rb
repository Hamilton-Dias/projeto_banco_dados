class EmpresaPortfolio < ApplicationRecord

	has_many :users
	has_many :possuis
	has_many :meta
end
