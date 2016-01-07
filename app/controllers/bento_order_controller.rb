class BentoOrderController < ApplicationController
	def index
		@bentoOrders = BentoOrder.all
	end
	def newbento_order
		@bentoOrder = BentoOrder.new
	end
	def create
		@bentoOrder = BentoOrder.new(boparam)
		@bentoOrder.save
		redirect_to(:action => "index")
	end
	def modify
		@bentoOrder = BentoOrder.find(params[:id])
	end
	def updating
		@bentoOrder = BentoOrder.find(params[:id])
		@bentoOrder.update_attributes(boparam)
		redirect_to(:action => "index")
	end
	def delete
		@bentoOrder = BentoOrder.find(params[:id])
		@bentoOrder.destroy
		redirect_to(:action => "index")
	end
	def boparam
		params.require(:bento_order).permit(:orderDate, :totalPrice, :customer_id, :payWay_id, :deliverTime_id)
	end
end
