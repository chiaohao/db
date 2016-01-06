class PayWayController < ApplicationController
	def index
		@pay_ways = PayWay.all
	end
	def newpay_way
		@pay_way = PayWay.new
	end
	def create
		@pay_way = PayWay.new(pwparam)
		@pay_way.save
		redirect_to(:action => "index")
	end
	def modify
		@pay_way = PayWay.find(params[:id])
	end
	def updating
		@pay_way = PayWay.find(params[:id])
		@pay_way.update_attributes(pwparam)
		redirect_to(:action => "index")
	end
	def delete
		@pay_way = PayWay.find(params[:id])
		@pay_way.destroy
		redirect_to(:action => "index")
	end
	def pwparam
		params.require(:pay_way).permit(:payWay, :fee)
	end
end
