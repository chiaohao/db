class MainPageController < ApplicationController
	def index
		@customer = Customer.all
	end
	def login
		@customer = Customer.find(params[:cname, :password])
		if(@customer!=null)

		end
	end
end
