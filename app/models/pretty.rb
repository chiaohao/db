class Pretty < ActiveRecord::Base
	has_many :pretty_orderships, :dependent => :delete_all
	has_many :bentoOrders , :through => :pretty_orderships
	
end
