class Bento < ActiveRecord::Base
	belongs_to :bentoshop
	has_many :orderDetails
end
