class MainPageController < ApplicationController
	def index
		@customer = Customer.new
	end
	def login
		@c = Customer.new(cusparam)
		puts "aaaaaaaaaaaaaa#{@c.account}, #{@c.password}aaaaaaaaaaaaaa"
		@customer = Customer.where(account: @c.account, password: @c.password)
		puts "bbbbbbbbbbbbbb#{@customer.account}bbbbbbbbbbbbbb"
		#if @customer!=null then
		redirect_to(:action => "index")
	end
	def cusparam
		params.require(:customer).permit(:cname, :account, :password, :city, :address, :phone)
	end
end
