class PayWayController < ApplicationController
	def index
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@pay_ways = PayWay.all
		end
	end
	def newpay_way
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@pay_way = PayWay.new
		end
	end
	def create
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@pay_way = PayWay.new(pwparam)
			@pay_way.save
			redirect_to(:action => "index")
		end
	end
	def modify
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@pay_way = PayWay.find(params[:id])
		end
	end
	def updating
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@pay_way = PayWay.find(params[:id])
			@pay_way.update_attributes(pwparam)
			redirect_to(:action => "index")
		end
	end
	def delete
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@pay_way = PayWay.find(params[:id])
			@pay_way.destroy
			redirect_to(:action => "index")
		end
	end
	def pwparam
		params.require(:pay_way).permit(:payWay, :fee)
	end
end
