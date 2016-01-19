class AdminController < ApplicationController
	def index
		@username = cookies[:key]
		if @username!="admin" then
			redirect_to("/")
		end
	end


end
