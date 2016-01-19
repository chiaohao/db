class BentoOrderController < ApplicationController
	def index
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@bentoOrders = BentoOrder.all
		end
	end
	def newbento_order
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@bentoOrder = BentoOrder.new
		end
	end
	def create
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@bentoOrder = BentoOrder.new(boparam)
			@bentoOrder.save
			redirect_to(:action => "index")
		end
	end
	def modify
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@bentoOrder = BentoOrder.find(params[:id])
		end
	end
	def updating
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@bentoOrder = BentoOrder.find(params[:id])
			@bentoOrder.update_attributes(boparam)
			redirect_to(:action => "index")
		end
	end
	def delete
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@bentoOrder = BentoOrder.find(params[:id])
			@bentoOrder.destroy
			redirect_to(:action => "index")
		end
	end
	def boparam
		params.require(:bento_order).permit(:orderDate, :totalPrice, :customer_id, :payWay_id, :deliverTime_id)
	end
end
