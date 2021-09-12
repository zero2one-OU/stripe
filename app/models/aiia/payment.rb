module Aiia
  class Payment < ApplicationRecord
		def pay!
	    credit = ::Credit.find(self.context)	
			credit.ok!
		end
  end
end
