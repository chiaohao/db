class MainPageController < ApplicationController
	def index
		@customer = Customer.new
		@username = cookies[:key]
	end
	def login
		@c = Customer.new(cusparam)
		puts "aaaaaaaaaaaaaa#{@c.account}, #{@c.password}aaaaaaaaaaaaaa"
		@customer = Customer.where(account: @c.account, password: @c.password)
		if @customer.count!=0 then
			@customer.each do |s|
				cookies[:key] = @c.account
			end
		end
		redirect_to(:action => "index")
	end
	def logout
		cookies.delete :key
		redirect_to(:action => "index")
	end
	def cusparam
		params.require(:customer).permit(:cname, :account, :password, :city, :address, :phone)
	end
end
