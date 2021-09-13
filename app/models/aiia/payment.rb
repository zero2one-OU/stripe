module Aiia
  class Payment < ApplicationRecord
		def pay!
			credit = ::Credit.find(self.context.to_i)	
			credit.publish_webhooks
		end
  end
end
