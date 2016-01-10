class DeliverTimeController < ApplicationController
	def index
		@deliverTimes = DeliverTime.all
	end
	def newtime
		@deliverTime = DeliverTime.new
	end
	def create
		@deliverTime = DeliverTime.new(time)
		@deliverTime.save
		redirect_to(:action => "index")
	end
	def modify
		@deliverTime = DeliverTime.find(params[:id])
	end
	def updating
		@deliverTime = DeliverTime.find(params[:id])
		@deliverTime.update_attributes(time)
		redirect_to(:action => "index")
	end
	def delete
		@deliverTime = DeliverTime.find(params[:id])
		@deliverTime.destroy
		redirect_to(:action => "index")
	end
	def time
		params.require(:deliver_time).permit(:deliverTime, :deliverExpense)
	end
end

