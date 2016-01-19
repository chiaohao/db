class BentoshopController < ApplicationController
	def index
		@bentoshops = Bentoshop.all
		@username = cookies[:key]
	end
	def newshop
		if cookies[:key]!="admin" then
			redirect_to(:action => "index")
		else
			@bentoshop = Bentoshop.new
		end
	end
	def create
		if cookies[:key]!="admin" then
			redirect_to(:action => "index")
		else
			@bentoshop = Bentoshop.new(shop)
			@bentoshop.save
			redirect_to(:action => "index")
		end
	end
	def modify
		if cookies[:key]!="admin" then
			redirect_to(:action => "index")
		else
			@bentoshop = Bentoshop.find(params[:id])
		end
	end
	def updating
		if cookies[:key]!="admin" then
			redirect_to(:action => "index")
		else
			@bentoshop = Bentoshop.find(params[:id])
			@bentoshop.update_attributes(shop)
			redirect_to(:action => "index")
		end
	end
	def delete
		if cookies[:key]!="admin" then
			redirect_to(:action => "index")
		else
			@bentoshop = Bentoshop.find(params[:id])
			@bentoshop.destroy
			redirect_to(:action => "index")
		end
	end
	def shop
		params.require(:bentoshop).permit(:shop_name, :address, :phone, :city)
	end
end
