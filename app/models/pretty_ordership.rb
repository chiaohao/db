class PrettyOrdership < ActiveRecord::Base
	belongs_to :bentoOrder
	belongs_to :pretty
end
