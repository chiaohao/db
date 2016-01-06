class PrettyController < ApplicationController
	def index
		@pretties = Pretty.all
	end
	def newpretty
		@pretty = Pretty.new
	end
	def create
		@pretty = Pretty.new(prettyparam)
		@pretty.save
		redirect_to(:action => "index")
	end
	def modify
		@pretty = Pretty.find(params[:id])
	end
	def updating
		@pretty = Pretty.find(params[:id])
		@pretty.update_attributes(prettyparam)
		redirect_to(:action => "index")
	end
	def delete
		@pretty = Pretty.find(params[:id])
		@pretty.destroy
		redirect_to(:action => "index")
	end
	def prettyparam
		params.require(:pretty).permit(:name, :prettyStyle, :strength, :city)
	end
end
