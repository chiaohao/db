class PrettyController < ApplicationController
	def index
		@pretties = Pretty.all
		@username = cookies[:key]
	end
	def newpretty
		if cookies[:key]!="admin" then
			redirect_to(:action => "index")
		else
			@pretty = Pretty.new
		end
	end
	def create
		if cookies[:key]!="admin" then
			redirect_to(:action => "index")
		else
			@pretty = Pretty.new(prettyparam)
			@pretty.save
			redirect_to(:action => "index")
		end
	end
	def modify
		if cookies[:key]!="admin" then
			redirect_to(:action => "index")
		else
			@pretty = Pretty.find(params[:id])
		end
	end
	def updating
		if cookies[:key]!="admin" then
			redirect_to(:action => "index")
		else
			@pretty = Pretty.find(params[:id])
			@pretty.update_attributes(prettyparam)
			redirect_to(:action => "index")
		end
	end
	def delete
		if cookies[:key]!="admin" then
			redirect_to(:action => "index")
		else
			@pretty = Pretty.find(params[:id])
			@pretty.destroy
			redirect_to(:action => "index")
		end
	end
	def prettyparam
		params.require(:pretty).permit(:name, :prettyStyle, :strength, :city)
	end
end
