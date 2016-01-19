class BentoController < ApplicationController
	def index
		@bentos = Bento.all
		@username = cookies[:key]
	end
	def newbento
		if cookies[:key]!="admin" then
			redirect_to(:action => "index")
		else
			@bento = Bento.new
		end
	end
	def create
		if cookies[:key]!="admin" then
			redirect_to(:action => "index")
		else
			@bento = Bento.new(bentoparam)
			@bento.save
			redirect_to(:action => "index")
		end
	end
	def modify
		if cookies[:key]!="admin" then
			redirect_to(:action => "index")
		else
			@bento = Bento.find(params[:id])
		end
	end
	def updating
		if cookies[:key]!="admin" then
			redirect_to(:action => "index")
		else
			@bento = Bento.find(params[:id])
			@bento.update_attributes(bentoparam)
			redirect_to(:action => "index")
		end
	end
	def delete
		if cookies[:key]!="admin" then
			redirect_to(:action => "index")
		else
			@bento = Bento.find(params[:id])
			@bento.destroy
			redirect_to(:action => "index")
		end
	end
	def bentoparam
		params.require(:bento).permit(:item_name, :price, :bentoshop_id)
	end
end
