class OrderPageController < ApplicationController
	def neworder
		@order = BentoOrder.new
		@detail = OrderDetail.new 
	end
	def create
		@order = BentoOrder.new(orderparam)
		@detail = OrderDetail.new(detailparam)
		@order.save
		@detail.save
		redirect_to('main_page')
	end
	def orderparam
		params.require(:order_page).permit(:orderDate, :totalPrice, :payWay_id, :deliverTime_id)
	end
	def detailparam
		params.require(:order_page).permit(:order_id, :item_id, :num)
	end
end
