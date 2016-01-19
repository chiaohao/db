class CustomerController < ApplicationController
	def index
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@customers = Customer.all
		end
	end
	def newcustomer
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@customer = Customer.new
		end
	end
	def create
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@customer = Customer.new(cusparam)
			@customer.save
			redirect_to(:action => "index")
		end
	end
	def modify
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@customer = Customer.find(params[:id])
		end
	end
	def updating
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@customer = Customer.find(params[:id])
			@customer.update_attributes(cusparam)
			redirect_to(:action => "index")
		end
	end
	def delete
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@customer = Customer.find(params[:id])
			@customer.destroy
			redirect_to(:action => "index")
		end
	end
	def cusparam
		params.require(:customer).permit(:cname, :account, :password, :city, :address, :phone)
	end
end
