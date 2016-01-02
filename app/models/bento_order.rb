class BentoOrder < ActiveRecord::Base
	belongs_to :deliverTime
	belongs_to :customer
	belongs_to :payWay
	has_many :pretty_orderships
	has_many :prettys ,:through => :pretty_orderships
	has_many :orderDetails
end
