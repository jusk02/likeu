class Click < ActiveRecord::Base

	before_create do
   puts self.ip_address
  end
end
