class OrderDetailController < ApplicationController
	def index
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@details = OrderDetail.all
		end
	end
	def newdetail
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@detail = OrderDetail.new
		end
	end
	def create
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@detail = OrderDetail.new(orderdetail)
			@detail.save
			redirect_to(:action => "index")
		end
	end
	def modify
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@detail = OrderDetail.find(params[:id])
		end
	end
	def updating
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@detail = OrderDetail.find(params[:id])
			@detail.update_attributes(orderdetail)
			redirect_to(:action => "index")
		end
	end
	def delete
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@detail = OrderDetail.find(params[:id])
			@detail.destroy
			redirect_to(:action => "index")
		end
	end
	def orderdetail
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			params.require(:order_detail).permit(:order_id, :item_id, :num)
		end
	end
end
