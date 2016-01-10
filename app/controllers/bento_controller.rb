class BentoController < ApplicationController
	def index
		@bentos = Bento.all
	end
	def newbento
		@bento = Bento.new
	end
	def create
		@bento = Bento.new(bentoparam)
		@bento.save
		redirect_to(:action => "index")
	end
	def modify
		@bento = Bento.find(params[:id])
	end
	def updating
		@bento = Bento.find(params[:id])
		@bento.update_attributes(bentoparam)
		redirect_to(:action => "index")
	end
	def delete
		@bento = Bento.find(params[:id])
		@bento.destroy
		redirect_to(:action => "index")
	end
	def bentoparam
		params.require(:bento).permit(:item_name, :price, :bentoshop_id)
	end
end
