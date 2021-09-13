module Aiia
  class Payment < ApplicationRecord
		def pay!
	    credit = ::Credit.find(self.context)	
			credit.publish_webhooks
		end
  end
end
