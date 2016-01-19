class DeliverTimeController < ApplicationController
	def index
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@deliverTimes = DeliverTime.all
		end
	end
	def newtime
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@deliverTime = DeliverTime.new
		end
	end
	def create
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@deliverTime = DeliverTime.new(time)
			@deliverTime.save
			redirect_to(:action => "index")
		end
	end
	def modify
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@deliverTime = DeliverTime.find(params[:id])
		end
	end
	def updating
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@deliverTime = DeliverTime.find(params[:id])
			@deliverTime.update_attributes(time)
			redirect_to(:action => "index")
		end
	end
	def delete
		if cookies[:key]!="admin" then
			redirect_to("/")
		else
			@deliverTime = DeliverTime.find(params[:id])
			@deliverTime.destroy
			redirect_to(:action => "index")
		end
	end
	def time
		params.require(:deliver_time).permit(:deliverTime, :deliverExpense)
	end
end

