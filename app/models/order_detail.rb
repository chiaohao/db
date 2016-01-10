class OrderDetail < ActiveRecord::Base
	belongs_to :bentoOrder
	belongs_to :bento
end
