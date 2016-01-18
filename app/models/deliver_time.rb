class DeliverTime < ActiveRecord::Base
	has_many :bentoOrders, :dependent => :delete_all
end
