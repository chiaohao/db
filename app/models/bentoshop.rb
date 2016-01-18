class Bentoshop < ActiveRecord::Base
	has_many :bentos, :dependent => :delete_all
end
