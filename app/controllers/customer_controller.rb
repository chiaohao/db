class CustomerController < ApplicationController
	def index
		@customers = Customer.all
	end
	def newcustomer
		@customer = Customer.new
	end
	def create
		@customer = Customer.new(cusparam)
		@customer.save
		redirect_to(:action => "index")
	end
	def modify
		@customer = Customer.find(params[:id])
	end
	def updating
		@customer = Customer.find(params[:id])
		@customer.update_attributes(cusparam)
		redirect_to(:action => "index")
	end
	def delete
		@customer = Customer.find(params[:id])
		@customer.destroy
		redirect_to(:action => "index")
	end
	def cusparam
		params.require(:customer).permit(:cname, :account, :password, :city, :address, :phone)
	end
end
