class Click < ActiveRecord::Base

	validates :ip_address, uniqueness: true
end
