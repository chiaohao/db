class OrderDetail < ActiveRecord::Base
	belong_to :bentoOrder
	belong_to :bento
end
