class PrettyOrdershipController < ApplicationController
	def index
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@pos = PrettyOrdership.all
		end
	end
	def newpo
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@po = PrettyOrdership.new
		end
	end
	def create
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@po = PrettyOrdership.new(poparam)
			@po.save
			redirect_to(:action => "index")
		end
	end
	def modify
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@po = PrettyOrdership.find(params[:id])
		end
	end
	def updating
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@po = PrettyOrdership.find(params[:id])
			@po.update_attributes(poparam)
			redirect_to(:action => "index")
		end
	end
	def delete
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@po = PrettyOrdership.find(params[:id])
			@po.destroy
			redirect_to(:action => "index")
		end
	end
	def poparam
		params.require(:pretty_ordership).permit(:order_id, :pretty_id)
	end
end
