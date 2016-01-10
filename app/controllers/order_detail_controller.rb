class OrderDetailController < ApplicationController
	def index
		@details = OrderDetail.all
	end
	def newdetail
		@detail = OrderDetail.new
	end
	def create
		@detail = OrderDetail.new(orderdetail)
		@detail.save
		redirect_to(:action => "index")
	end
	def modify
		@detail = OrderDetail.find(params[:id])
	end
	def updating
		@detail = OrderDetail.find(params[:id])
		@detail.update_attributes(orderdetail)
		redirect_to(:action => "index")
	end
	def delete
		@detail = OrderDetail.find(params[:id])
		@detail.destroy
		redirect_to(:action => "index")
	end
	def orderdetail
		params.require(:order_detail).permit(:order_id, :item_id, :num)
	end
end
