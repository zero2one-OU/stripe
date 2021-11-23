module Stripe
  class Engine < ::Rails::Engine
    isolate_namespace Stripe
  end
end
