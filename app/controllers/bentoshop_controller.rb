class BentoshopController < ApplicationController
	def index
		@bentoshops = Bentoshop.all
	end
	def newshop
		@bentoshop = Bentoshop.new
	end
	def create
		@bentoshop = Bentoshop.new(shop)
		@bentoshop.save
		redirect_to(:action => "index")
	end
	def modify
		@bentoshop = Bentoshop.find(params[:id])
	end
	def updating
		@bentoshop = Bentoshop.find(params[:id])
		@bentoshop.update_attributes(shop)
		redirect_to(:action => "index")
	end
	def delete
		@bentoshop = Bentoshop.find(params[:id])
		@bentoshop.destroy
		redirect_to(:action => "index")
	end
	def shop
		params.require(:bentoshop).permit(:shop_name, :address, :phone, :city)
	end
end
