class User < ApplicationRecord

	belongs_to :cargo
	belongs_to :acc_type
	belongs_to :empresa_portfolio
end
