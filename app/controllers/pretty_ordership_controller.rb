class PrettyOrdershipController < ApplicationController
	def index
		@pos = PrettyOrdership.all
	end
	def newpo
		@po = PrettyOrdership.new
	end
	def create
		@po = PrettyOrdership.new(poparam)
		@po.save
		redirect_to(:action => "index")
	end
	def modify
		@po = PrettyOrdership.find(params[:id])
	end
	def updating
		@po = PrettyOrdership.find(params[:id])
		@po.update_attributes(poparam)
		redirect_to(:action => "index")
	end
	def delete
		@po = PrettyOrdership.find(params[:id])
		@po.destroy
		redirect_to(:action => "index")
	end
	def poparam
		params.require(:pretty_ordership).permit(:order_id, :pretty_id)
	end
end
