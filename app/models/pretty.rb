class Pretty < ActiveRecord::Base
	has_many :pretty_orderships
	has_many :bentoOrders , :through => :pretty_orderships
	
end
